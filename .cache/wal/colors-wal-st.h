const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#071516", /* black   */
  [1] = "#1A6558", /* red     */
  [2] = "#286A55", /* green   */
  [3] = "#267366", /* yellow  */
  [4] = "#308771", /* blue    */
  [5] = "#4D916E", /* magenta */
  [6] = "#627C84", /* cyan    */
  [7] = "#a2c0bf", /* white   */

  /* 8 bright colors */
  [8]  = "#718685",  /* black   */
  [9]  = "#1A6558",  /* red     */
  [10] = "#286A55", /* green   */
  [11] = "#267366", /* yellow  */
  [12] = "#308771", /* blue    */
  [13] = "#4D916E", /* magenta */
  [14] = "#627C84", /* cyan    */
  [15] = "#a2c0bf", /* white   */

  /* special colors */
  [256] = "#071516", /* background */
  [257] = "#a2c0bf", /* foreground */
  [258] = "#a2c0bf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
