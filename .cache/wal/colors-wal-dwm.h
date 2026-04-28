static const char norm_fg[] = "#a2c0bf";
static const char norm_bg[] = "#071516";
static const char norm_border[] = "#718685";

static const char sel_fg[] = "#a2c0bf";
static const char sel_bg[] = "#286A55";
static const char sel_border[] = "#a2c0bf";

static const char urg_fg[] = "#a2c0bf";
static const char urg_bg[] = "#1A6558";
static const char urg_border[] = "#1A6558";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
