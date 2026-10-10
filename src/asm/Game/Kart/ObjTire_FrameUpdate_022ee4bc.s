# ObjTire per-frame update at 0x022ee4bc (444 bytes). Table-driven state machine for a kart tire: advances the counter at
# +268, runs the exit action of the current state from the table at +288 (8-byte entries: halfword offset, halfword index,
# function pointer), switches to the next state (+292) and runs its entry action from the table at +280, then its
# per-frame action from the table at +284. Finally counts the halfword at +412 against the limit at +414 and, when it
# passes, sets state 4 and the flag at +267, and advances the halfword at +452. Written from the disassembly of the
# original bytes. Name is a placeholder. The tire is a kart part.
    .text
    .globl ObjTire_FrameUpdate_022ee4bc
ObjTire_FrameUpdate_022ee4bc:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    or      r31, r3, r3
    stw     r30, 8(r1)
    stw     r0, 20(r1)
    lwz     r12, 268(r31)
    lbz     r0, 267(r31)
    addi    r12, r12, 0x1
    stw     r12, 268(r31)
    cmpwi   r0, 0x0
    lbz     r30, 292(r31)
    lbz     r10, 265(r31)
    beq     L5c8
    lwz     r7, 288(r31)
    slwi    r6, r10, 3
    add     r12, r7, r6
    lha     r7, 2(r12)
    cmpwi   r7, 0x0
    beq     L554
    lwz     r8, 276(r31)
    cmpwi   r7, 0x0
    lha     r9, 0(r12)
    add     r3, r8, r9
    bge     L534
    lwz     r0, 4(r12)
    mtctr   r0
    bctrl
    lbz     r10, 265(r31)
    b       L554
L534:
    lha     r10, 6(r12)
    lwzx    r12, r3, r10
    slwi    r11, r7, 3
    add     r10, r12, r11
    lwz     r0, 4(r10)
    mtctr   r0
    bctrl
    lbz     r10, 265(r31)
L554:
    lwz     r7, 280(r31)
    li      r0, 0x0
    stb     r10, 266(r31)
    rlwinm  r9, r30, 3, 21, 28
    stb     r30, 265(r31)
    add     r10, r7, r9
    stb     r0, 267(r31)
    stw     r0, 268(r31)
    lha     r0, 2(r10)
    cmpwi   r0, 0x0
    beq     L5cc
    lwz     r8, 276(r31)
    cmpwi   r0, 0x0
    lha     r9, 0(r10)
    add     r3, r8, r9
    bge     L5a8
    lwz     r6, 4(r10)
    mtctr   r6
    bctrl
    lbz     r10, 265(r31)
    b       L5c8
L5a8:
    lha     r10, 6(r10)
    lwzx    r12, r3, r10
    slwi    r0, r0, 3
    add     r12, r12, r0
    lwz     r6, 4(r12)
    mtctr   r6
    bctrl
    lbz     r10, 265(r31)
L5c8:
    slwi    r9, r10, 3
L5cc:
    lwz     r6, 284(r31)
    add     r11, r6, r9
    lha     r6, 2(r11)
    cmpwi   r6, 0x0
    beq     L620
    lwz     r7, 276(r31)
    cmpwi   r6, 0x0
    lha     r8, 0(r11)
    add     r3, r7, r8
    bge     L604
    lwz     r8, 4(r11)
    mtctr   r8
    bctrl
    b       L620
L604:
    lha     r9, 6(r11)
    lwzx    r11, r3, r9
    slwi    r10, r6, 3
    add     r7, r11, r10
    lwz     r8, 4(r7)
    mtctr   r8
    bctrl
L620:
    lha     r11, 412(r31)
    cmpwi   r11, 0x0
    lhz     r9, 452(r31)
    blt     L658
    addi    r12, r11, 0x1
    lha     r11, 414(r31)
    extsh   r0, r12
    cmpw    r0, r11
    sth     r12, 412(r31)
    ble     L658
    li      r6, 0x4
    li      r7, 0x1
    stb     r6, 292(r31)
    stb     r7, 267(r31)
L658:
    addi    r9, r9, 0x1
    sth     r9, 452(r31)
    lwz     r0, 20(r1)
    lwz     r30, 8(r1)
    mtlr    r0
    lwz     r31, 12(r1)
    addi    r1, r1, 16
    blr
