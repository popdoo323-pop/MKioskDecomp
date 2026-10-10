# ItemCoin state reset at 0x0211b830 (308 bytes). Runs the exit action of the current state (table at this+0x44,
# record index from +0x2d), stores the new state, calls the shared reset thunk, then runs the entry action of state 0
# (table at this+0x3c). Sets three fields to -1 and a float from the virtual slot +0x17c. External call supplied as a
# symbol. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl ItemCoin_StateReset_0211b830
ItemCoin_StateReset_0211b830:
    mflr    r0
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    stw     r30, 0x8(r1)
    or      r31, r3, r3
    stw     r0, 0x14(r1)
    lbz     r10, 0x2d(r31)
    lwz     r12, 0x44(r31)
    rlwinm  r0, r10, 0x3, 0x0, 0x1c
    add     r12, r12, r0
    lha     r0, 0x2(r12)
    cmpwi   r0, 0x0
    beq     L8ac
    lwz     r11, 0x38(r31)
    cmpwi   r0, 0x0
    lha     r8, 0x0(r12)
    add     r3, r11, r8
    bge     L88c
    lwz     r10, 0x4(r12)
    mtctr   r10
    bctrl
    lbz     r10, 0x2d(r31)
    b       L8ac
L88c:
    lha     r10, 0x6(r12)
    lwzx    r8, r3, r10
    rlwinm  r0, r0, 0x3, 0x0, 0x1c
    add     r12, r8, r0
    lwz     r10, 0x4(r12)
    mtctr   r10
    bctrl
    lbz     r10, 0x2d(r31)
L8ac:
    stb     r10, 0x2e(r31)
    li      r30, 0x0
    lwz     r11, 0x3c(r31)
    li      r9, 0x1
    stb     r30, 0x2d(r31)
    stb     r9, 0x2f(r31)
    stw     r30, 0x30(r31)
    lha     r8, 0x2(r11)
    cmpwi   r8, 0x0
    beq     L914
    lwz     r12, 0x38(r31)
    cmpwi   r8, 0x0
    lha     r0, 0x0(r11)
    add     r3, r12, r0
    bge     L8f8
    lwz     r8, 0x4(r11)
    mtctr   r8
    bctrl
    b       L914
L8f8:
    lha     r9, 0x6(r11)
    lwzx    r11, r3, r9
    rlwinm  r10, r8, 0x3, 0x0, 0x1c
    add     r11, r11, r10
    lwz     r8, 0x4(r11)
    mtctr   r8
    bctrl
L914:
    li      r12, -0x1
    stw     r12, 0x16c(r31)
    stw     r12, 0xe8(r31)
    or      r3, r31, r31
    stw     r12, 0x170(r31)
    bl      ext_0211b82c
    lwz     r9, 0x0(r31)
    stw     r30, 0x188(r31)
    stw     r30, 0x18c(r31)
    lwz     r0, 0x17c(r9)
    mtctr   r0
    or      r3, r31, r31
    bctrl
    stfs    f1, 0x174(r31)
    lwz     r0, 0x14(r1)
    lwz     r30, 0x8(r1)
    mtlr    r0
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    blr
