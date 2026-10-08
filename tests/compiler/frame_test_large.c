/* Larger compiler control test: stack frames, calls, saved registers, floats. Not part of the game build.
   Build with the candidate compiler at several optimisation levels and count the stwu frame sizes. */
extern void g(void *p);
extern int h(int x);
extern double d(double x);

int leaf_1(void) { char b[5]; g(b); return b[0]; }
int leaf_2(void) { char b[9]; g(b); return b[0]; }
int leaf_3(void) { char b[13]; g(b); return b[0]; }
int leaf_4(void) { char b[17]; g(b); return b[0]; }
int leaf_5(void) { char b[21]; g(b); return b[0]; }
int leaf_6(void) { char b[25]; g(b); return b[0]; }
int leaf_7(void) { char b[29]; g(b); return b[0]; }
int leaf_8(void) { char b[33]; g(b); return b[0]; }
int leaf_9(void) { char b[37]; g(b); return b[0]; }
int leaf_10(void) { char b[41]; g(b); return b[0]; }
int leaf_11(void) { char b[45]; g(b); return b[0]; }
int leaf_12(void) { char b[49]; g(b); return b[0]; }
int leaf_13(void) { char b[53]; g(b); return b[0]; }
int leaf_14(void) { char b[57]; g(b); return b[0]; }
int leaf_15(void) { char b[61]; g(b); return b[0]; }
int leaf_16(void) { char b[65]; g(b); return b[0]; }
int leaf_17(void) { char b[69]; g(b); return b[0]; }
int leaf_18(void) { char b[73]; g(b); return b[0]; }
int leaf_19(void) { char b[77]; g(b); return b[0]; }
int leaf_20(void) { char b[81]; g(b); return b[0]; }
int leaf_21(void) { char b[85]; g(b); return b[0]; }
int leaf_22(void) { char b[89]; g(b); return b[0]; }
int leaf_23(void) { char b[93]; g(b); return b[0]; }
int leaf_24(void) { char b[97]; g(b); return b[0]; }
int saves_1(int a, int b) { int x = h(a); int y = h(b); int z = h(x + y + 1); return x * y + z; }
int saves_2(int a, int b) { int x = h(a); int y = h(b); int z = h(x + y + 2); return x * y + z; }
int saves_3(int a, int b) { int x = h(a); int y = h(b); int z = h(x + y + 3); return x * y + z; }
int saves_4(int a, int b) { int x = h(a); int y = h(b); int z = h(x + y + 4); return x * y + z; }
int saves_5(int a, int b) { int x = h(a); int y = h(b); int z = h(x + y + 5); return x * y + z; }
int saves_6(int a, int b) { int x = h(a); int y = h(b); int z = h(x + y + 6); return x * y + z; }
int saves_7(int a, int b) { int x = h(a); int y = h(b); int z = h(x + y + 7); return x * y + z; }
int saves_8(int a, int b) { int x = h(a); int y = h(b); int z = h(x + y + 8); return x * y + z; }
double fp_1(double a) { double t[2]; t[0] = a; g(t); return t[0] * 1.5 + d(a); }
double fp_2(double a) { double t[3]; t[0] = a; g(t); return t[0] * 2.5 + d(a); }
double fp_3(double a) { double t[4]; t[0] = a; g(t); return t[0] * 3.5 + d(a); }
double fp_4(double a) { double t[5]; t[0] = a; g(t); return t[0] * 4.5 + d(a); }
