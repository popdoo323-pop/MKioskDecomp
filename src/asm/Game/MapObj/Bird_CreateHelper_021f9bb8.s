# Bird helper at 0x021f9bb8 (152 bytes). Builds a 0x28-byte frame, calls two virtual methods through the object's
# tables, then calls FUN_023f9034 and stores its result at this+0x78. Written from the disassembly of the original bytes.
# Name is a placeholder; the bird class identity is an inference (see docs/bird.md).
    .text
    .globl Bird_CreateHelper_021f9bb8
Bird_CreateHelper_021f9bb8:
    mflr    r0
    stwu    r1, -0x28(r1)
    li      r12, 0
    stw     r31, 0x24(r1)
    stw     r12, 0x10(r1)
    stw     r3, 0x8(r1)
    stb     r12, 0x1d(r1)
    stw     r12, 0x14(r1)
    stw     r0, 0x2c(r1)
    li      r0, 1
    lwz     r6, 0x0(r3)
    stb     r0, 0x1c(r1)
    stw     r6, 0xc(r1)
    stb     r0, 0x19(r1)
    stb     r12, 0x1e(r1)
    stb     r0, 0x1a(r1)
    lwz     r7, 0xb8(r3)
    stb     r12, 0x18(r1)
    stb     r0, 0x1b(r1)
    lwz     r12, 0x1dc(r7)
    mtctr   r12
    or      r31, r3, r3
    bctrl
    lwz     r10, 0xb8(r31)
    stw     r3, 0x10(r1)
    lwz     r0, 0x1e4(r10)
    mtctr   r0
    or      r3, r31, r31
    bctrl
    stw     r3, 0x14(r1)
    addi    r3, r1, 0x8
    bl      FUN_023f9034
    stw     r3, 0x78(r31)
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    mtlr    r0
    addi    r1, r1, 0x28
    blr
