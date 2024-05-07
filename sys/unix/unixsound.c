/* SPDX-License-Identifier: NGPL */

#define NEED_VARARGS

#include "hack.h"

#ifdef USER_SOUNDS

#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <signal.h>
#include <sndfile.h>
#include <portaudio.h>

#define FRAMECOUNT 1024

/* Wrapper for paniclog() that:
 * - doesn't print to console (since it's called from another process)
 * - doesn't exit (since errors playing sound aren't fatal)
 * - has its own type (neither panic nor impossible really fits)
 */
static void
usersound_panic VA_DECL(const char *, str)
{
	VA_START(str);
	VA_INIT(str, char *);
	{
	    char buf[BUFSZ];
	    Vsprintf(buf,str,VA_ARGS);
	    paniclog("usersound", buf);
	}
	VA_END();
}

static void
play_usersound_blocking(const char *filename, int volume)
{
	/* Open file */
	/* The documentation says format must be specified but it
	   seems to just ignore it and autodetect the format. */
	SF_INFO sfinfo = { .format = SF_FORMAT_WAV };
	SNDFILE *sndfile = sf_open(filename, SFM_READ, &sfinfo);
	if (!sndfile) {
		usersound_panic("sf_open: %s\n", sf_strerror(NULL));
		return;
	}

	/* Initialize portaudio */
	PaError error;
	error = Pa_Initialize();
	if (error != paNoError) {
		usersound_panic("Pa_Initialize: %s\n", Pa_GetErrorText(error));
		sf_close(sndfile);
		return;
	}

	/* Open stream */
	PaStream *stream;
	PaStreamParameters params = {
		.channelCount = sfinfo.channels,
		.device = Pa_GetDefaultOutputDevice(),
		.sampleFormat = paFloat32
	};
	error = Pa_OpenStream(&stream, NULL, &params, sfinfo.samplerate, FRAMECOUNT, 0, NULL, NULL);
	if (error != paNoError) {
		usersound_panic("Pa_OpenStream: %s\n", Pa_GetErrorText(error));
		Pa_Terminate();
		sf_close(sndfile);
		return;
	}

	/* Play the sound */
	Pa_StartStream(stream);
	float frames[sfinfo.channels * FRAMECOUNT * sizeof(float)];
	sf_count_t framesread;
	do {
		framesread = sf_readf_float(sndfile, frames, FRAMECOUNT);
		if (framesread)
			Pa_WriteStream(stream, frames, framesread);
	} while (framesread == FRAMECOUNT);
	Pa_StopStream(stream);

	/* Cleanup */
	Pa_CloseStream(stream);
	Pa_Terminate();
	sf_close(sndfile);
}

static pid_t nowplayingpid = 0; /* PID of the process currently playing sound */
static struct sigaction orig_handler;

static void
usersound_sigchld_handler(int sig, siginfo_t *info, void *context)
{
	/* Reap process */
	waitpid(info->si_pid, NULL, WNOHANG);
	/* If called on nowplayingpid, unregister self and unset it */
	if (sig == SIGCHLD && info->si_pid == nowplayingpid) {
		sigaction(sig, &orig_handler, NULL);
		nowplayingpid = 0;
	}
	/* Otherwise, ignore (nothing else handles SIGCHLD so this is fine) */
}

static void
usersound_atexit(void)
{
	/* Kill process playing sound on exit */
	if (nowplayingpid > 0)
		kill(nowplayingpid, SIGTERM);
}

void
play_usersound(const char *filename, int volume)
{
	/* Register atexit handler (but only once!) */
	static boolean atexit_registered = FALSE;
	if (!atexit_registered) {
		atexit(usersound_atexit);
		atexit_registered = TRUE;
	}
	/* Sound is currently playing, kill it first */
	if (nowplayingpid > 0)
		kill(nowplayingpid, SIGTERM);
	/* Register signal handler */
	struct sigaction handler = {
		.sa_flags = SA_SIGINFO,
		.sa_sigaction = usersound_sigchld_handler
	};
	sigaction(SIGCHLD, &handler, &orig_handler);
	/* Fork before playing the sound so it doesn't block */
	pid_t pid = nowplayingpid = fork();
	if (pid != 0) {		/* We are the parent */
		if (pid == -1)	/* fork() failed */
			usersound_panic("fork: %s\n", strerror(errno));
		return;
	}
	/* We are the child */
	/* Unset handlers, or getting killed messes up the terminal */
	signal(SIGTERM, SIG_DFL);
	signal(SIGINT, SIG_DFL);
	signal(SIGHUP, SIG_DFL);
	signal(SIGQUIT, SIG_DFL);
	/* portaudio prints junk to stderr, close it so it doesn't mess up the display */
	fclose(stderr);
	/* Finally, play sound and exit */
	play_usersound_blocking(filename, volume);
	exit(0);
}

#endif /* USER_SOUNDS */
