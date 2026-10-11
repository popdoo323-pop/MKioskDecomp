# Converted from the disassembly of 0x020151bc (184 bytes). Name is a placeholder.
    .text
    .globl Batch_020151bc
Batch_020151bc:
    stwu    r1,-40(r1)
    mflr    r0
    stmw    r27,20(r1)
    mr      r30,r4
    mr      r31,r5
    mr      r27,r6
    mr      r28,r7
    stw     r0,44(r1)
    mr      r29,r8
    bl      ext_02015194
    cmpwi   r29,0
    mr      r7,r3
    beq-    L02015228
    lis     r12,4096
    mr      r3,r30
    mr      r4,r31
    lfs     f1,4732(r12)
    mr      r5,r27
    mr      r6,r28
    bl      ext_020fe20c
    stw     r3,8(r1)
    lhz     r8,8(r1)
    lhz     r9,10(r1)
    sth     r8,12(r1)
    sth     r9,14(r1)
    lwz     r0,12(r1)
    b       L0201525c
L02015228:
    lis     r11,4096
    mr      r3,r30
    mr      r4,r31
    lfs     f1,4736(r11)
    mr      r5,r27
    mr      r6,r28
    bl      ext_020fe20c
    stw     r3,8(r1)
    lhz     r8,8(r1)
    lhz     r9,10(r1)
    sth     r8,12(r1)
    sth     r9,14(r1)
    lwz     r0,12(r1)
L0201525c:
    lmw     r27,20(r1)
    mr      r3,r0
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
