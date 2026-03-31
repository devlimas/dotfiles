static const char norm_fg[] = "#e1dfcf";
static const char norm_bg[] = "#161213";
static const char norm_border[] = "#9d9c90";

static const char sel_fg[] = "#e1dfcf";
static const char sel_bg[] = "#7A837B";
static const char sel_border[] = "#e1dfcf";

static const char urg_fg[] = "#e1dfcf";
static const char urg_bg[] = "#7F8072";
static const char urg_border[] = "#7F8072";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
