/* vim:set cin ft=c sw=4 sts=4 ts=8 et ai cino=Ls\:0t0(0 : -*- mode:c;fill-column:80;tab-width:8;c-basic-offset:4;indent-tabs-mode:nil;c-file-style:"k&r" -*-*/

#include "curses.h"
#include "hack.h"
#include "wincurs.h"
#include "cursinit.h"
#include "patchlevel.h"

#include <ctype.h>

/* Global curses variables extern'd in wincurs.h */
boolean counting;
int orig_cursor;             /* Preserve initial cursor state */
int term_rows, term_cols; /* size of underlying terminal */

WINDOW *base_term;    /* underlying terminal window */

WINDOW *mapwin, *statuswin, *messagewin;    /* Main windows */

/* Initialization and startup functions for curses interface */

/* Private declarations */

#define NETHACK_CURSES      1
#define SLASHEM_CURSES      2
#define UNNETHACK_CURSES    3
#define SPORKHACK_CURSES    4
#define GRUNTHACK_CURSES    5
#define DNETHACK_CURSES     6

static void set_window_position(int *, int *, int *, int *, int,
                                int *, int *, int *, int *, int,
                                int, int);

/* array to save initial terminal colors for later restoration */

extern struct rgb_color_option *setcolor_opts;
extern struct rgb_color_option *resetcolor_opts;


typedef struct nhrgb_type {
    short r;
    short g;
    short b;
} nhrgb;

nhrgb orig_darkgray;

nhrgb default_colors[16] = {
    {50  , 50  , 50  }, // black
    {1000, 0   , 0   }, // red
    {75  , 630 , 55  }, // green
    {480 , 290 , 0   }, // yellow (brown)
    {0   , 215 , 855 }, // blue
    {530 , 90  , 600  }, // magenta (purple)
    {215 , 560 , 823 }, // cyan
    {800 , 800 , 800 }, // white
    {0   , 0   , 0   }, // bright black (no color)
    {1000, 500 , 0   }, // bright red (orange)
    {0   , 1000, 0   }, // bright green
    {1000, 1000, 0   }, // bright yellow (yellow)
    {0   , 0   , 1000}, // bright blue
    {1000, 0   , 1000}, // bright magenta
    {0   , 1000, 1000}, // bright cyan
    {1000, 1000, 1000}  // bright white
};

nhrgb orig_colors[16];

/* Banners used for an optional ASCII splash screen */

#define NETHACK_SPLASH_A \
" _   _        _    _    _               _    "

#define NETHACK_SPLASH_B \
"| \\ | |      | |  | |  | |             | |   "

#define NETHACK_SPLASH_C \
"|  \\| |  ___ | |_ | |__| |  __ _   ___ | | __"

#define NETHACK_SPLASH_D \
"| . ` | / _ \\| __||  __  | / _` | / __|| |/ /"

#define NETHACK_SPLASH_E \
"| |\\  ||  __/| |_ | |  | || (_| || (__ |   < "

#define NETHACK_SPLASH_F \
"|_| \\_| \\___| \\__||_|  |_| \\__,_| \\___||_|\\_\\"

#define SLASHEM_SPLASH_A \
" _____  _              _     _  ______  __  __ "

#define SLASHEM_SPLASH_B \
" / ____|| |            | |   ( )|  ____||  \\/  |"

#define SLASHEM_SPLASH_C \
"| (___  | |  __ _  ___ | |__  \\|| |__   | \\  / |"

#define SLASHEM_SPLASH_D \
" \\___ \\ | | / _` |/ __|| '_ \\   |  __|  | |\\/| |"

#define SLASHEM_SPLASH_E \
" ____) || || (_| |\\__ \\| | | |  | |____ | |  | |"

#define SLASHEM_SPLASH_F \
"|_____/ |_| \\__,_||___/|_| |_|  |______||_|  |_|"

#define UNNETHACK_SPLASH_A \
" _    _         _   _        _    _    _               _"

#define UNNETHACK_SPLASH_B \
"| |  | |       | \\ | |      | |  | |  | |             | |"

#define UNNETHACK_SPLASH_C \
"| |  | | _ __  |  \\| |  ___ | |_ | |__| |  __ _   ___ | | __"

#define UNNETHACK_SPLASH_D \
"| |  | || '_ \\ | . ` | / _ \\| __||  __  | / _` | / __|| |/ /"

#define UNNETHACK_SPLASH_E \
"| |__| || | | || |\\  ||  __/| |_ | |  | || (_| || (__ |   <"

#define UNNETHACK_SPLASH_F \
" \\____/ |_| |_||_| \\_| \\___| \\__||_|  |_| \\__,_| \\___||_|\\_\\"

#define SPORKHACK_SPLASH_A \
"  _____                      _     _    _               _    "
#define SPORKHACK_SPLASH_B \
" / ____|                    | |   | |  | |             | |   "
#define SPORKHACK_SPLASH_C \
"| (___   _ __    ___   _ __ | | __| |__| |  __ _   ___ | | __"
#define SPORKHACK_SPLASH_D \
" \\___ \\ | '_ \\  / _ \\ | '__|| |/ /|  __  | / _` | / __|| |/ /"
#define SPORKHACK_SPLASH_E \
" ____) || |_) || (_) || |   |   < | |  | || (_| || (__ |   < "
#define SPORKHACK_SPLASH_F \
"|_____/ | .__/  \\___/ |_|   |_|\\_\\|_|  |_| \\__,_| \\___||_|\\_\\"
#define SPORKHACK_SPLASH_G \
"        | |                                                  "
#define SPORKHACK_SPLASH_H \
"        |_|                                                 "

#define GRUNTHACK_SPLASH_A \
" ______                      _    _    _               _    "
#define GRUNTHACK_SPLASH_B \
"/  ____)                    | |  | |  | |             | |   "
#define GRUNTHACK_SPLASH_C \
"| / ___  _ __  _   _  _ __  | |_ | |__| |  __ _   ___ | |  _"
#define GRUNTHACK_SPLASH_D \
"| | L  \\| '__)| | | || '_ \\ | __)|  __  | / _` | / __)| |/ /"
#define GRUNTHACK_SPLASH_E \
"| l__) || |   | |_| || | | || |_ | |  | || (_| || (__ |   < "
#define GRUNTHACK_SPLASH_F \
"\\______/|_|   \\___,_||_| |_| \\__)|_|  |_| \\__,_| \\___)|_|\\_\\"

#define DNETHACK_SPLASH_A \
"     _  _   _        _    _    _               _    "
#define DNETHACK_SPLASH_B \
"    | || \\ | |      | |  | |  | |             | |   "
#define DNETHACK_SPLASH_C \
"  __| ||  \\| |  ___ | |_ | |__| |  __ _   ___ | | __"
#define DNETHACK_SPLASH_D \
" / _` || . ` | / _ \\| __||  __  | / _` | / __|| |/ /"
#define DNETHACK_SPLASH_E \
"| (_| || |\\  ||  __/| |_ | |  | || (_| || (__ |   < "
#define DNETHACK_SPLASH_F \
" \\__,_||_| \\_| \\___| \\__||_|  |_| \\__,_| \\___||_|\\_\\"


/* win* is size and placement of window to change, x/y/w/h is baseline which can
   decrease depending on alignment of win* in orientation.
   Negative minh/minw: as much as possible, but at least as much as specified. */
static void
set_window_position(int *winx, int *winy, int *winw, int *winh, int orientation,
                    int *x, int *y, int *w, int *h, int border_space,
                    int minh, int minw)
{
    *winw = *w;
    *winh = *h;

    /* Set window height/width */
    if (orientation == ALIGN_TOP || orientation == ALIGN_BOTTOM) {
        if (minh < 0) {
            *winh = (*h - ROWNO - border_space);
            if (-minh > *winh)
                *winh = -minh;
        } else
            *winh = minh;
        *h -= (*winh + border_space);
    } else {
        if (minw < 0) {
            *winw = (*w - COLNO - border_space);
            if (-minw > *winw)
                *winw = -minw;
        } else
            *winw = minw;
        *w -= (*winw + border_space);
    }

    *winx = *w + border_space + *x;
    *winy = *h + border_space + *y;

    /* Set window position */
    if (orientation != ALIGN_RIGHT) {
        *winx = *x;
        if (orientation == ALIGN_LEFT)
            *x += *winw + border_space;
    }
    if (orientation != ALIGN_BOTTOM) {
        *winy = *y;
        if (orientation == ALIGN_TOP)
            *y += *winh + border_space;
    }
}

/* Create the "main" nonvolitile windows used by nethack */

void
curses_create_main_windows()
{
    int min_message_height = 1;
    int message_orientation = 0;
    int status_orientation = 0;
    int border_space = 0;
    int hspace = term_cols - 80;
    boolean borders = FALSE;

    switch (iflags.wc2_windowborders) {
    case 1:                     /* On */
        borders = TRUE;
        break;
    case 2:                     /* Off */
        borders = FALSE;
        break;
    case 3:                     /* Auto */
        if ((term_cols > 81) && (term_rows > 25)) {
            borders = TRUE;
        }
        break;
    default:
        borders = FALSE;
    }


    if (borders) {
        border_space = 2;
        hspace -= border_space;
    }

    if ((term_cols - border_space) < COLNO) {
        min_message_height++;
    }

    /* Determine status window orientation */
    if (!iflags.wc_align_status || (iflags.wc_align_status == ALIGN_TOP)
        || (iflags.wc_align_status == ALIGN_BOTTOM)) {
        if (!iflags.wc_align_status) {
            iflags.wc_align_status = ALIGN_BOTTOM;
        }
        status_orientation = iflags.wc_align_status;
    } else {                    /* left or right alignment */

        /* Max space for player name and title horizontally */
        if ((hspace >= 26) && (term_rows >= 24)) {
            status_orientation = iflags.wc_align_status;
            hspace -= (26 + border_space);
        } else {
            status_orientation = ALIGN_BOTTOM;
        }
    }

    /* Determine message window orientation */
    if (!iflags.wc_align_message || (iflags.wc_align_message == ALIGN_TOP)
        || (iflags.wc_align_message == ALIGN_BOTTOM)) {
        if (!iflags.wc_align_message) {
            iflags.wc_align_message = ALIGN_TOP;
        }
        message_orientation = iflags.wc_align_message;
    } else {                    /* left or right alignment */

        if ((hspace - border_space) >= 25) {    /* Arbitrary */
            message_orientation = iflags.wc_align_message;
        } else {
            message_orientation = ALIGN_TOP;
        }
    }

    /* Figure out window positions and placements. Status and message area can be aligned
       based on configuration. The priority alignment-wise is: status > msgarea > game.
       Define everything as taking as much space as possible and shrink/move based on
       alignment positions. */
    int message_x = 0;
    int message_y = 0;
    int status_x = 0;
    int status_y = 0;
    int inv_x = 0;
    int inv_y = 0;
    int map_x = 0;
    int map_y = 0;

    int message_height = 0;
    int message_width = 0;
    int status_height = 0;
    int status_width = 0;
    int inv_height = 0;
    int inv_width = 0;
    int map_height = (term_rows - border_space);
    int map_width = (term_cols - border_space);

    boolean status_vertical = FALSE;
    boolean msg_vertical = FALSE;
    if (status_orientation == ALIGN_LEFT ||
        status_orientation == ALIGN_RIGHT)
        status_vertical = TRUE;
    if (message_orientation == ALIGN_LEFT ||
        message_orientation == ALIGN_RIGHT)
        msg_vertical = TRUE;

    int statusheight = 3;
    if (!iflags.classic_status && iflags.statuslines >= 4)
        statusheight = 4;
    if (iflags.classic_status && iflags.statuslines <= 2)
        statusheight = 2;

    /* Vertical windows have priority. Otherwise, priotity is:
       status > inv > msg */
    if (status_vertical)
        set_window_position(&status_x, &status_y, &status_width, &status_height,
                            status_orientation, &map_x, &map_y, &map_width, &map_height,
                            border_space, statusheight, 26);

    if (flags.perm_invent) {
        /* Take up all width unless msgbar is also vertical. */
        int width = -25;
        if (msg_vertical)
            width = 25;

        set_window_position(&inv_x, &inv_y, &inv_width, &inv_height,
                            ALIGN_RIGHT, &map_x, &map_y, &map_width, &map_height,
                            border_space, -1, width);
    }

    if (msg_vertical)
        set_window_position(&message_x, &message_y, &message_width, &message_height,
                            message_orientation, &map_x, &map_y, &map_width, &map_height,
                            border_space, -1, -25);

    /* Now draw horizontal windows */
    if (!status_vertical)
        set_window_position(&status_x, &status_y, &status_width, &status_height,
                            status_orientation, &map_x, &map_y, &map_width, &map_height,
                            border_space, statusheight, 26);

    if (!msg_vertical)
        set_window_position(&message_x, &message_y, &message_width, &message_height,
                            message_orientation, &map_x, &map_y, &map_width, &map_height,
                            border_space, -1, -25);

    if (map_width > COLNO)
        map_width = COLNO;

    if (map_height > ROWNO)
        map_height = ROWNO;

    if (curses_get_nhwin(STATUS_WIN)) {
        curses_del_nhwin(STATUS_WIN);
        curses_del_nhwin(MESSAGE_WIN);
        curses_del_nhwin(MAP_WIN);
        curses_del_nhwin(INV_WIN);

        clear();
    }

    curses_add_nhwin(STATUS_WIN, status_height, status_width, status_y,
                     status_x, status_orientation, borders);

    curses_add_nhwin(MESSAGE_WIN, message_height, message_width, message_y,
                     message_x, message_orientation, borders);

    if (flags.perm_invent)
        curses_add_nhwin(INV_WIN, inv_height, inv_width, inv_y, inv_x,
                         ALIGN_RIGHT, borders);

    curses_add_nhwin(MAP_WIN, map_height, map_width, map_y, map_x, 0, borders);

    refresh();

    curses_refresh_nethack_windows();

    if (iflags.window_inited) {
        curses_update_stats();
        if (flags.perm_invent)
            curses_update_inventory();
    } else {
        iflags.window_inited = TRUE;
    }
}


/* Initialize curses colors to colors used by NetHack */

void
curses_init_nhcolors()
{
#ifdef TEXTCOLOR
    if (has_colors()) {
        use_default_colors();
        int i, j;
        int cnum = COLORS >= 16 ? 16 : 8;
        int clr_remap[16] = {
            COLOR_BLACK, COLOR_RED, COLOR_GREEN, COLOR_YELLOW,
            COLOR_BLUE,
            COLOR_MAGENTA, COLOR_CYAN, -1, COLOR_WHITE,
            COLOR_RED + 8, COLOR_GREEN + 8, COLOR_YELLOW + 8,
            COLOR_BLUE + 8,
            COLOR_MAGENTA + 8, COLOR_CYAN + 8, COLOR_WHITE + 8
        };
        /* standard colors */
        for (i=0; i < cnum; i++) {
            init_pair(i+1, clr_remap[i], -1);
        }
        /* with backgrounds */
        for (i=0; i < cnum; i++) {
            for (j=0; j < cnum; j++) {
                if (i != j)
                    init_pair(j + i*cnum + cnum + 1, clr_remap[j], clr_remap[i]);
                else
                    init_pair(j + i*cnum + cnum + 1, COLOR_BLACK, clr_remap[j]);
            }
        }

        if (can_change_color()) {
            for (int nclr = 0; nclr < cnum; nclr++){
                color_content(clr_remap[nclr], &(orig_colors[nclr].r), &(orig_colors[nclr].g), &(orig_colors[nclr].b));
                if (iflags.classic_colors == TRUE)
                    init_color(clr_remap[nclr], default_colors[nclr].r, default_colors[nclr].g, default_colors[nclr].b);
            }

            for (struct rgb_color_option* curr = setcolor_opts; curr; curr = curr->next){
                init_color(curr->color, curr->r, curr->g, curr->b);
            }
# ifdef USE_DARKGRAY
            if (COLORS > 16) {
                color_content(CURSES_DARK_GRAY, &orig_darkgray.r,
                              &orig_darkgray.g, &orig_darkgray.b);
                init_color(CURSES_DARK_GRAY, 300, 300, 300);
                /* just override black colorpair entry here */
                init_pair(1, CURSES_DARK_GRAY, -1);
            }
# endif
        }
    }
#endif
}


/* Allow player to pick character's role, race, gender, and alignment.
Borrowed from the Gnome window port. */

void
curses_choose_character()
{
    int n, i, sel, count_off, pick4u;
    int count = 0;
    int cur_character = 0;
    const char **choices;
    int *pickmap;
    char *prompt;
    char pbuf[QBUFSZ];
    char choice[QBUFSZ];
    char tmpchoice[QBUFSZ];

#ifdef TUTORIAL_MODE
    winid win;
    anything any;
    menu_item *selected = 0;
#endif

    prompt = build_plselection_prompt(pbuf, QBUFSZ, flags.initrole,
                                      flags.initrace, flags.descendant, flags.initgend,
                                      flags.initalign);

    /* This part is irritating: we have to strip the choices off of
       the string and put them in a separate string in order to use
       curses_character_input_dialog for this prompt. */

    while (cur_character != '[') {
        cur_character = prompt[count];
        count++;
    }

    count_off = count;

    while (cur_character != ']') {
        tmpchoice[count - count_off] = prompt[count];
        count++;
        cur_character = prompt[count];
    }

    tmpchoice[count - count_off] = '\0';
    lcase(tmpchoice);

    while (!isspace(prompt[count_off])) {
        count_off--;
    }

    prompt[count_off] = '\0';
    sprintf(choice, "%s%c", tmpchoice, '\033');
    if (strchr(tmpchoice, 't')) {       /* Tutorial mode */
        mvaddstr(0, 1, "New? Press t to enter a tutorial.");
    }

    /* Add capital letters as choices that aren't displayed */

    for (count = 0; tmpchoice[count]; count++) {
        tmpchoice[count] = toupper(tmpchoice[count]);
    }

    strcat(choice, tmpchoice);

    /* prevent an unnecessary prompt */
    rigid_role_checks();

    if (!flags.randomall &&
        (flags.initrole == ROLE_NONE || flags.initrace == ROLE_NONE ||
         flags.initgend == ROLE_NONE || flags.initalign == ROLE_NONE)) {
        pick4u = tolower(curses_character_input_dialog(prompt, choice, 'y'));
    } else {
        pick4u = 'y';
    }

    if (pick4u == 'q') {        /* Quit or cancelled */
        clearlocks();
        curses_bail(0);
    }

    if (pick4u == 'y') {
        flags.randomall = TRUE;
    }
#ifdef TUTORIAL_MODE
    else if (pick4u == 't') {   /* Tutorial mode in UnNetHack */
        clear();
        mvaddstr(0, 1, "Choose a character");
        refresh();
        win = curses_get_wid(NHW_MENU);
        curses_create_nhmenu(win);
        any.a_int = 1;
        curses_add_menu(win, NO_GLYPH, &any, 'v', 0, ATR_NONE,
                        "lawful female dwarf Valkyrie (uses melee and thrown weapons)",
                        MENU_UNSELECTED);
        any.a_int = 2;
        curses_add_menu(win, NO_GLYPH, &any, 'w', 0, ATR_NONE,
                        "chaotic male elf Wizard (relies mostly on spells)",
                        MENU_UNSELECTED);
        any.a_int = 3;
        curses_add_menu(win, NO_GLYPH, &any, 'R', 0, ATR_NONE,
                        "neutral female human Ranger (good with ranged combat)",
                        MENU_UNSELECTED);
        any.a_int = 4;
        curses_add_menu(win, NO_GLYPH, &any, 'q', 0, ATR_NONE,
                        "quit", MENU_UNSELECTED);
        curses_end_menu(win, "What character do you want to try?");
        n = curses_select_menu(win, PICK_ONE, &selected);
        destroy_nhwindow(win);
        if (n != 1 || selected[0].item.a_int == 4) {
            clearlocks();
            curses_bail(0);
        }
        switch (selected[0].item.a_int) {
        case 1:
            flags.initrole = str2role("Valkyrie");
            flags.initrace = str2race("dwarf");
            flags.initgend = str2gend("female");
            flags.initalign = str2align("lawful");
            break;
        case 2:
            flags.initrole = str2role("Wizard");
            flags.initrace = str2race("elf");
            flags.initgend = str2gend("male");
            flags.initalign = str2align("chaotic");
            break;
        case 3:
            flags.initrole = str2role("Ranger");
            flags.initrace = str2race("human");
            flags.initgend = str2gend("female");
            flags.initalign = str2align("neutral");
            break;
        default:
            panic("Impossible menu selection");
            break;
        }
        free((genericptr_t) selected);
        selected = 0;
        flags.tutorial = 1;
    }
#endif

    clear();
    refresh();

    if (!flags.randomall && flags.initrole < 0) {
        /* select a role */
        for (n = 0; roles[n].name.m; n++)
            continue;
        choices = (const char **) alloc(sizeof (char *) * (n + 1));
        pickmap = (int *) alloc(sizeof (int) * (n + 1));
        for (;;) {
            for (n = 0, i = 0; roles[i].name.m; i++) {
                if (ok_role(i, flags.initrace, flags.initgend, flags.initalign)) {
                    if (flags.initgend >= 0 && flags.female && roles[i].name.f)
                        choices[n] = roles[i].name.f;
                    else
                        choices[n] = roles[i].name.m;
                    pickmap[n++] = i;
                }
            }
            if (n > 0)
                break;
            else if (flags.initalign >= 0)
                flags.initalign = -1;   /* reset */
            else if (flags.initgend >= 0)
                flags.initgend = -1;
            else if (flags.initrace >= 0)
                flags.initrace = -1;
            else
                panic("no available ROLE+race+gender+alignment combinations");
        }
        choices[n] = (const char *) 0;
        if (n > 1)
            sel =
                curses_character_dialog(choices,
                                        "Choose one of the following roles:");
        else
            sel = 0;
        if (sel >= 0)
            sel = pickmap[sel];
        else if (sel == ROLE_NONE) {    /* Quit */
            clearlocks();
            curses_bail(0);
        }
        free(choices);
        free(pickmap);
    } else if (flags.initrole < 0)
        sel = ROLE_RANDOM;
    else
        sel = flags.initrole;

    if (sel == ROLE_RANDOM) {   /* Random role */
        sel = pick_role(flags.initrace, flags.initgend,
                        flags.initalign, PICK_RANDOM);
        if (sel < 0)
            sel = randrole(0);
    }

    flags.initrole = sel;

    /* Select a race, if necessary */
    /* force compatibility with role, try for compatibility with
     * pre-selected gender/alignment */
    if (flags.initrace < 0 || !validrace(flags.initrole, flags.initrace)) {
        if (flags.initrace == ROLE_RANDOM || flags.randomall) {
            flags.initrace = pick_race(flags.initrole, flags.initgend,
                                       flags.initalign, PICK_RANDOM);
            if (flags.initrace < 0)
                flags.initrace = randrace(flags.initrole);
        } else {
            /* Count the number of valid races */
            n = 0;              /* number valid */
            for (i = 0; races[i].noun; i++) {
                if (ok_race(flags.initrole, i, flags.initgend, flags.initalign))
                    n++;
            }
            if (n == 0) {
                for (i = 0; races[i].noun; i++) {
                    if (validrace(flags.initrole, i))
                        n++;
                }
            }

            choices = (const char **) alloc(sizeof (char *) * (n + 1));
            pickmap = (int *) alloc(sizeof (int) * (n + 1));
            for (n = 0, i = 0; races[i].noun; i++) {
                if (ok_race(flags.initrole, i, flags.initgend, flags.initalign)) {
                    choices[n] = races[i].noun;
                    pickmap[n++] = i;
                }
            }
            choices[n] = (const char *) 0;
            /* Permit the user to pick, if there is more than one */
            if (n > 1)
                sel =
                    curses_character_dialog(choices,
                                            "Choose one of the following races:");
            else
                sel = 0;
            if (sel >= 0)
                sel = pickmap[sel];
            else if (sel == ROLE_NONE) {        /* Quit */
                clearlocks();
                curses_bail(0);
            }
            flags.initrace = sel;
            free(choices);
            free(pickmap);
        }
        if (flags.initrace == ROLE_RANDOM) {    /* Random role */
            sel = pick_race(flags.initrole, flags.initgend,
                            flags.initalign, PICK_RANDOM);
            if (sel < 0)
                sel = randrace(flags.initrole);
            flags.initrace = sel;
        }
    }

    /* Select a gender, if necessary */
    /* force compatibility with role/race, try for compatibility with
     * pre-selected alignment */
    if (flags.initgend < 0 ||
        !validgend(flags.initrole, flags.initrace, flags.initgend)) {
        if (flags.initgend == ROLE_RANDOM || flags.randomall) {
            flags.initgend = pick_gend(flags.initrole, flags.initrace,
                                       flags.initalign, PICK_RANDOM);
            if (flags.initgend < 0)
                flags.initgend = randgend(flags.initrole, flags.initrace);
        } else {
            /* Count the number of valid genders */
            n = 0;              /* number valid */
            for (i = 0; i < ROLE_GENDERS; i++) {
                if (ok_gend(flags.initrole, flags.initrace, i, flags.initalign))
                    n++;
            }
            if (n == 0) {
                for (i = 0; i < ROLE_GENDERS; i++) {
                    if (validgend(flags.initrole, flags.initrace, i))
                        n++;
                }
            }

            choices = (const char **) alloc(sizeof (char *) * (n + 1));
            pickmap = (int *) alloc(sizeof (int) * (n + 1));
            for (n = 0, i = 0; i < ROLE_GENDERS; i++) {
                if (ok_gend(flags.initrole, flags.initrace, i, flags.initalign)) {
                    choices[n] = genders[i].adj;
                    pickmap[n++] = i;
                }
            }
            choices[n] = (const char *) 0;
            /* Permit the user to pick, if there is more than one */
            if (n > 1)
                sel =
                    curses_character_dialog(choices,
                                            "Choose one of the following genders:");
            else
                sel = 0;
            if (sel >= 0)
                sel = pickmap[sel];
            else if (sel == ROLE_NONE) {        /* Quit */
                clearlocks();
                curses_bail(0);
            }
            flags.initgend = sel;
            free(choices);
            free(pickmap);
        }
        if (flags.initgend == ROLE_RANDOM) {    /* Random gender */
            sel = pick_gend(flags.initrole, flags.initrace,
                            flags.initalign, PICK_RANDOM);
            if (sel < 0)
                sel = randgend(flags.initrole, flags.initrace);
            flags.initgend = sel;
        }
    }

    /* Select an alignment, if necessary */
    /* force compatibility with role/race/gender */
    if (flags.initalign < 0 ||
        !validalign(flags.initrole, flags.initrace, flags.initalign)) {
        if (flags.initalign == ROLE_RANDOM || flags.randomall
            || (flags.initrole != ROLE_NONE
                && roles[flags.initrole].malenum == PM_EXILE)) {
            flags.initalign = pick_align(flags.initrole, flags.initrace,
                                         flags.initgend, PICK_RANDOM);
            if (flags.initalign < 0)
                flags.initalign = randalign(flags.initrole, flags.initrace);
        } else {
            /* Count the number of valid alignments */
            n = 0;              /* number valid */
            for (i = 0; i < ROLE_ALIGNS; i++) {
                if (ok_align(flags.initrole, flags.initrace, flags.initgend, i))
                    n++;
            }
            if (n == 0) {
                for (i = 0; i < ROLE_ALIGNS; i++)
                    if (validalign(flags.initrole, flags.initrace, i))
                        n++;
            }

            choices = (const char **) alloc(sizeof (char *) * (n + 1));
            pickmap = (int *) alloc(sizeof (int) * (n + 1));
            for (n = 0, i = 0; i < ROLE_ALIGNS; i++) {
                if (ok_align(flags.initrole, flags.initrace, flags.initgend, i)) {
                    choices[n] = aligns[i].adj;
                    pickmap[n++] = i;
                }
            }
            choices[n] = (const char *) 0;
            /* Permit the user to pick, if there is more than one */
            if (n > 1)
                sel =
                    curses_character_dialog(choices,
                                            "Choose one of the following alignments:");
            else
                sel = 0;
            if (sel >= 0)
                sel = pickmap[sel];
            else if (sel == ROLE_NONE) {        /* Quit */
                clearlocks();
                curses_bail(0);
            }
            flags.initalign = sel;
            free(choices);
            free(pickmap);
        }
        if (flags.initalign == ROLE_RANDOM) {
            sel = pick_align(flags.initrole, flags.initrace,
                             flags.initgend, PICK_RANDOM);
            if (sel < 0)
                sel = randalign(flags.initrole, flags.initrace);
            flags.initalign = sel;
        }
    }

    /* Select descendant status, if necessary */
    if (flags.descendant < 0){
        if (flags.descendant == ROLE_RANDOM || flags.randomall || flags.initrole < 0 || !validdescendant(flags.initrole)) {
           flags.descendant = 0; // never randomly roll descendant
        } else {
            /* Always 2 options - yn */
            choices = (const char **) alloc(sizeof (char *) * (3));
            pickmap = (int *) alloc(sizeof (int) * (3));
            char * terms[] = {"Inherit from a past adventurer (start with an heirloom artifact but low stats and dangerous foes)",
                                "No past inheritance", '\0'};

            for (i = 0; i < 2; i++) {
                choices[i] = terms[i];
                pickmap[i] = i;
            }
            choices[i] = (const char *) 0;

            sel = curses_character_dialog(choices, "Choose one of the following inheritances:");
            if (sel >= 0) sel = pickmap[sel];
            else if (sel == ROLE_NONE) {        /* Quit */
                clearlocks();
                curses_bail(0);
            }

            /* invert y/n for the sanity for putting "yes" as the first option, but 0 as the default */
            if (sel == 0) sel = 1;
            else if (sel == 1) sel = 0;
            else if (sel == ROLE_RANDOM) sel = rn2(2);

            flags.descendant = sel;
            free(choices);
            free(pickmap);
        }
    }
}


/* Prompt user for character race, role, alignment, or gender */

int
curses_character_dialog(const char **choices, const char *prompt)
{
    int count, count2, ret, curletter;
    char used_letters[52];
    anything identifier;
    menu_item *selected = NULL;
    winid wid = curses_get_wid(NHW_MENU);

    identifier.a_void = 0;
    curses_start_menu(wid);

    for (count = 0; choices[count]; count++) {
        curletter = tolower(choices[count][0]);
        for (count2 = 0; count2 < count; count2++) {
            if (curletter == used_letters[count2]) {
                curletter = toupper(curletter);
            }
        }

        identifier.a_int = (count + 1); /* Must be non-zero */
        curses_add_menu(wid, NO_GLYPH, &identifier, curletter, 0,
                        A_NORMAL, choices[count], FALSE);
        used_letters[count] = curletter;
    }

    /* Random Selection */
    identifier.a_int = ROLE_RANDOM;
    curses_add_menu(wid, NO_GLYPH, &identifier, '*', 0, A_NORMAL, "Random",
                    FALSE);

    /* Quit prompt */
    identifier.a_int = ROLE_NONE;
    curses_add_menu(wid, NO_GLYPH, &identifier, 'q', 0, A_NORMAL, "Quit",
                    FALSE);
    curses_end_menu(wid, prompt);
    ret = curses_select_menu(wid, PICK_ONE, &selected);
    if (ret == 1) {
        ret = (selected->item.a_int);
    } else {                    /* Cancelled selection */

        ret = ROLE_NONE;
    }

    if (ret > 0) {
        ret--;
    }

    free(selected);
    return ret;
}


/* Initialize and display options appropriately */

void
curses_init_options()
{
    set_wc_option_mod_status(WC_ALIGN_MESSAGE | WC_ALIGN_STATUS | WC_COLOR |
                             WC_HILITE_PET | WC_POPUP_DIALOG, SET_IN_GAME);

    set_wc2_option_mod_status(WC2_GUICOLOR, SET_IN_GAME);

    /* Remove a few options that are irrelevant to this windowport */
    set_option_mod_status("DECgraphics", SET_IN_FILE);
    set_option_mod_status("eight_bit_tty", SET_IN_FILE);

    /* Add those that are */
    set_option_mod_status("classic_status", SET_IN_GAME);

    /* Make sure that DECgraphics is not set to true via the config
       file, as this will cause display issues.  We can't disable it in
       options.c in case the game is compiled with both tty and curses. */
    if (iflags.DECgraphics) {
        switch_graphics(CURS_GRAPHICS);
    }
#ifdef PDCURSES
    /* PDCurses for SDL, win32 and OS/2 has the ability to set the
       terminal size programatically.  If the user does not specify a
       size in the config file, we will set it to a nice big 110x32 to
       take advantage of some of the nice features of this windowport. */
    if (iflags.wc2_term_cols == 0) {
        iflags.wc2_term_cols = 110;
    }

    if (iflags.wc2_term_rows == 0) {
        iflags.wc2_term_rows = 32;
    }

    resize_term(iflags.wc2_term_rows, iflags.wc2_term_cols);
    getmaxyx(base_term, term_rows, term_cols);

    /* This is needed for an odd bug with PDCurses-SDL */
    switch_graphics(ASCII_GRAPHICS);
    if (iflags.IBMgraphics) {
        switch_graphics(IBM_GRAPHICS);
#ifdef HAVE_SETLOCALE
    } else if (iflags.supports_utf8 && !iflags.cursesgraphics) {
        switch_graphics(UTF8_GRAPHICS);
#endif
    } else if (iflags.cursesgraphics) {
        switch_graphics(CURS_GRAPHICS);
    } else {
        switch_graphics(ASCII_GRAPHICS);
    }
#endif /* PDCURSES */
    if (!iflags.wc2_windowborders) {
        iflags.wc2_windowborders = 3;   /* Set to auto if not specified */
    }

    if (!iflags.wc2_petattr) {
        iflags.wc2_petattr = A_REVERSE;
    } else {                    /* Pet attribute specified, so hilite_pet should be true */

        iflags.hilite_pet = TRUE;
    }

#ifdef NCURSES_MOUSE_VERSION
    if (iflags.wc_mouse_support) {
        mousemask(BUTTON1_CLICKED, NULL);
    }
#endif
}


/* Display an ASCII splash screen if the splash_screen option is set */

void
curses_display_splash_window()
{
    int x_start;
    int y_start;
    int which_variant = NETHACK_CURSES; /* Default to NetHack */
    curses_get_window_xy(MAP_WIN, &x_start, &y_start);

    if ((term_cols < 70) || (term_rows < 20)) {
        iflags.wc_splash_screen = FALSE;        /* No room for s.s. */
    }
#ifdef DEF_GAME_NAME
    if (strcmp(DEF_GAME_NAME, "SlashEM") == 0) {
        which_variant = SLASHEM_CURSES;
    }
#endif

#ifdef GAME_SHORT_NAME
    if (strcmp(GAME_SHORT_NAME, "UNH") == 0) {
        which_variant = UNNETHACK_CURSES;
    }
#endif

    if (strncmp("SporkHack", COPYRIGHT_BANNER_A, 9) == 0) {
        which_variant = SPORKHACK_CURSES;
    }

    if (strncmp("GruntHack", COPYRIGHT_BANNER_A, 9) == 0) {
        which_variant = GRUNTHACK_CURSES;
    }

    if (strncmp("dNethack", COPYRIGHT_BANNER_A, 8) == 0) {
        which_variant = DNETHACK_CURSES;
    }


    curses_toggle_color_attr(stdscr, CLR_WHITE, A_NORMAL, ON);
    if (iflags.wc_splash_screen) {
        switch (which_variant) {
        case NETHACK_CURSES:
            mvaddstr(y_start, x_start, NETHACK_SPLASH_A);
            mvaddstr(y_start + 1, x_start, NETHACK_SPLASH_B);
            mvaddstr(y_start + 2, x_start, NETHACK_SPLASH_C);
            mvaddstr(y_start + 3, x_start, NETHACK_SPLASH_D);
            mvaddstr(y_start + 4, x_start, NETHACK_SPLASH_E);
            mvaddstr(y_start + 5, x_start, NETHACK_SPLASH_F);
            y_start += 7;
            break;
        case SLASHEM_CURSES:
            mvaddstr(y_start, x_start, SLASHEM_SPLASH_A);
            mvaddstr(y_start + 1, x_start, SLASHEM_SPLASH_B);
            mvaddstr(y_start + 2, x_start, SLASHEM_SPLASH_C);
            mvaddstr(y_start + 3, x_start, SLASHEM_SPLASH_D);
            mvaddstr(y_start + 4, x_start, SLASHEM_SPLASH_E);
            mvaddstr(y_start + 5, x_start, SLASHEM_SPLASH_F);
            y_start += 7;
            break;
        case UNNETHACK_CURSES:
            mvaddstr(y_start, x_start, UNNETHACK_SPLASH_A);
            mvaddstr(y_start + 1, x_start, UNNETHACK_SPLASH_B);
            mvaddstr(y_start + 2, x_start, UNNETHACK_SPLASH_C);
            mvaddstr(y_start + 3, x_start, UNNETHACK_SPLASH_D);
            mvaddstr(y_start + 4, x_start, UNNETHACK_SPLASH_E);
            mvaddstr(y_start + 5, x_start, UNNETHACK_SPLASH_F);
            y_start += 7;
            break;
        case SPORKHACK_CURSES:
            mvaddstr(y_start, x_start, SPORKHACK_SPLASH_A);
            mvaddstr(y_start + 1, x_start, SPORKHACK_SPLASH_B);
            mvaddstr(y_start + 2, x_start, SPORKHACK_SPLASH_C);
            mvaddstr(y_start + 3, x_start, SPORKHACK_SPLASH_D);
            mvaddstr(y_start + 4, x_start, SPORKHACK_SPLASH_E);
            mvaddstr(y_start + 5, x_start, SPORKHACK_SPLASH_F);
            mvaddstr(y_start + 6, x_start, SPORKHACK_SPLASH_G);
            mvaddstr(y_start + 7, x_start, SPORKHACK_SPLASH_H);
            y_start += 9;
            break;
        case GRUNTHACK_CURSES:
            mvaddstr(y_start, x_start, GRUNTHACK_SPLASH_A);
            mvaddstr(y_start + 1, x_start, GRUNTHACK_SPLASH_B);
            mvaddstr(y_start + 2, x_start, GRUNTHACK_SPLASH_C);
            mvaddstr(y_start + 3, x_start, GRUNTHACK_SPLASH_D);
            mvaddstr(y_start + 4, x_start, GRUNTHACK_SPLASH_E);
            mvaddstr(y_start + 5, x_start, GRUNTHACK_SPLASH_F);
            y_start += 7;
            break;
        case DNETHACK_CURSES:
            mvaddstr(y_start, x_start, DNETHACK_SPLASH_A);
            mvaddstr(y_start + 1, x_start, DNETHACK_SPLASH_B);
            mvaddstr(y_start + 2, x_start, DNETHACK_SPLASH_C);
            mvaddstr(y_start + 3, x_start, DNETHACK_SPLASH_D);
            mvaddstr(y_start + 4, x_start, DNETHACK_SPLASH_E);
            mvaddstr(y_start + 5, x_start, DNETHACK_SPLASH_F);
            y_start += 7;
            break;
        default:
            impossible("which_variant number %d out of range", which_variant);
        }
    }

    curses_toggle_color_attr(stdscr, CLR_WHITE, A_NORMAL, OFF);

#ifdef COPYRIGHT_BANNER_A
    mvaddstr(y_start, x_start, COPYRIGHT_BANNER_A);
    y_start++;
#endif

#ifdef COPYRIGHT_BANNER_B
    mvaddstr(y_start, x_start, COPYRIGHT_BANNER_B);
    y_start++;
#endif

#ifdef COPYRIGHT_BANNER_C
    mvaddstr(y_start, x_start, COPYRIGHT_BANNER_C);
    y_start++;
#endif

#ifdef COPYRIGHT_BANNER_D       /* Just in case */
    mvaddstr(y_start, x_start, COPYRIGHT_BANNER_D);
    y_start++;
#endif
    refresh();
}


/* Resore colors and cursor state before exiting */

void
curses_cleanup()
{
#ifdef TEXTCOLOR
    if (has_colors() && can_change_color()) {
        int cnum = COLORS >= 16 ? 16 : 8;
        int clr_remap[16] = {
            COLOR_BLACK, COLOR_RED, COLOR_GREEN, COLOR_YELLOW,
            COLOR_BLUE,
            COLOR_MAGENTA, COLOR_CYAN, -1, COLOR_WHITE,
            COLOR_RED + 8, COLOR_GREEN + 8, COLOR_YELLOW + 8,
            COLOR_BLUE + 8,
            COLOR_MAGENTA + 8, COLOR_CYAN + 8, COLOR_WHITE + 8
        };
        for (int nclr = 0; nclr < cnum; nclr++){
            init_color(clr_remap[nclr], orig_colors[nclr].r, orig_colors[nclr].g, orig_colors[nclr].b);
        }

        for (struct rgb_color_option* curr = resetcolor_opts; curr; curr = curr->next){
            init_color(curr->color, curr->r, curr->g, curr->b);
        }
# ifdef USE_DARKGRAY
        if (COLORS > 16) {
            init_color(CURSES_DARK_GRAY, orig_darkgray.r,
                       orig_darkgray.g, orig_darkgray.b);
        }
# endif
    }
#endif
}
