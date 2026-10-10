# Bird per-frame update at 0x021fe6a4 (420 bytes). Table-driven state machine. Counts down the halfword at +380 and, when
# it reaches zero, sets the flags at +247 and +272. Increments the frame counter at +248. When the flag at +247 is set,
# runs the enter action of the current state from the table at +268 (8-byte entries: halfword offset, halfword index,
# function pointer), then runs the state's per-frame action from the table at +260, then the table at +264. Written from
# the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl Bird_FrameUpdate_021fe6a4
Bird_FrameUpdate_021fe6a4:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    stw     r30, 8(r1)
    or      r31, r3, r3
    stw     r0, 20(r1)
    lha     r11, 380(r31)
    cmpwi   r11, 0x0
    lwz     r8, 248(r31)
    blt     L6e8
    addi    r12, r11, -1
    extsh.  r0, r12
    sth     r12, 380(r31)
    bgt     L6e8
    li      r6, 0x1
    stb     r6, 247(r31)
    stb     r6, 272(r31)
L6e8:
    lbz     r9, 247(r31)
    addi    r8, r8, 0x1
    lbz     r10, 245(r31)
    cmpwi   r9, 0x0
    stw     r8, 248(r31)
    lbz     r30, 272(r31)
    beq     L7d8
    lwz     r11, 268(r31)
    slwi    r0, r10, 3
    add     r11, r11, r0
    lha     r9, 2(r11)
    cmpwi   r9, 0x0
    beq     L764
    lwz     r12, 256(r31)
    cmpwi   r9, 0x0
    lha     r0, 0(r11)
    add     r3, r12, r0
    bge     L744
    lwz     r0, 4(r11)
    mtctr   r0
    bctrl
    lbz     r10, 245(r31)
    b       L764
L744:
    lha     r6, 6(r11)
    lwzx    r8, r3, r6
    slwi    r7, r9, 3
    add     r8, r8, r7
    lwz     r0, 4(r8)
    mtctr   r0
    bctrl
    lbz     r10, 245(r31)
L764:
    lwz     r11, 260(r31)
    li      r9, 0x0
    stb     r30, 245(r31)
    rlwinm  r7, r30, 3, 21, 28
    stb     r10, 246(r31)
    stb     r9, 247(r31)
    add     r8, r11, r7
    stw     r9, 248(r31)
    lha     r0, 2(r8)
    cmpwi   r0, 0x0
    beq     L7dc
    lwz     r12, 256(r31)
    cmpwi   r0, 0x0
    lha     r6, 0(r8)
    add     r3, r12, r6
    bge     L7b8
    lwz     r0, 4(r8)
    mtctr   r0
    bctrl
    lbz     r10, 245(r31)
    b       L7d8
L7b8:
    lha     r7, 6(r8)
    lwzx    r9, r3, r7
    slwi    r8, r0, 3
    add     r10, r9, r8
    lwz     r0, 4(r10)
    mtctr   r0
    bctrl
    lbz     r10, 245(r31)
L7d8:
    slwi    r7, r10, 3
L7dc:
    lwz     r10, 264(r31)
    add     r10, r10, r7
    lha     r8, 2(r10)
    cmpwi   r8, 0x0
    beq     L830
    lwz     r11, 256(r31)
    cmpwi   r8, 0x0
    lha     r12, 0(r10)
    add     r3, r11, r12
    bge     L814
    lwz     r6, 4(r10)
    mtctr   r6
    bctrl
    b       L830
L814:
    lha     r0, 6(r10)
    lwzx    r6, r3, r0
    slwi    r0, r8, 3
    add     r12, r6, r0
    lwz     r6, 4(r12)
    mtctr   r6
    bctrl
L830:
    lwz     r0, 20(r1)
    lwz     r30, 8(r1)
    mtlr    r0
    lwz     r31, 12(r1)
    addi    r1, r1, 16
    blr
