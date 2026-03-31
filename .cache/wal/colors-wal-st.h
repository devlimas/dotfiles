const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#161213", /* black   */
  [1] = "#7F8072", /* red     */
  [2] = "#7A837B", /* green   */
  [3] = "#88813B", /* yellow  */
  [4] = "#8F8B74", /* blue    */
  [5] = "#8F9689", /* magenta */
  [6] = "#A9AB98", /* cyan    */
  [7] = "#e1dfcf", /* white   */

  /* 8 bright colors */
  [8]  = "#9d9c90",  /* black   */
  [9]  = "#7F8072",  /* red     */
  [10] = "#7A837B", /* green   */
  [11] = "#88813B", /* yellow  */
  [12] = "#8F8B74", /* blue    */
  [13] = "#8F9689", /* magenta */
  [14] = "#A9AB98", /* cyan    */
  [15] = "#e1dfcf", /* white   */

  /* special colors */
  [256] = "#161213", /* background */
  [257] = "#e1dfcf", /* foreground */
  [258] = "#e1dfcf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
