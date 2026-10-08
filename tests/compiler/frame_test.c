/* Compiler control test: stack-frame alignment. Not part of the game build.
   Each function has a different local array size, so the compiler must reserve different frame sizes.
   The frame size is the N in the "stwu r1,-N(r1)" line of the disassembly.
   Build and disassemble with devkitPPC (powerpc-eabi-gcc), as described in docs/compiler_notes.md. */
extern void g(void *p);

int f_char20(void)  { char b[20]; g(b); return b[0]; }
int f_int5(void)    { int a[5];   g(a); return a[0]; }
int f_double3(void) { double d[3]; g(d); return (int)d[0]; }
int f_char13(void)  { char b[13]; g(b); return b[0]; }
int f_int11(void)   { int a[11];  g(a); return a[0]; }
int f_char40(void)  { char b[40]; g(b); return b[0]; }
