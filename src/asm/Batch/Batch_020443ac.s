# Converted from the disassembly of 0x020443ac (116 bytes). Name is a placeholder.
    .text
    .globl Batch_020443ac
Batch_020443ac:
    mflr    r0
    stw     r0,4(r1)
    mr      r7,r3
    stwu    r1,-8(r1)
    bl      ext_020440a8
    cmpwi   r3,0
    beq-    L02044410
    lwz     r11,0(r4)
    lwz     r12,252(r11)
    lis     r10,8
    cmplw   r12,r10
    lwz     r0,8(r7)
    ble-    L020443e4
    lis     r12,8
L020443e4:
    cmpwi   r0,-1
    lwz     r6,12(r7)
    beq-    L020443fc
    cmpw    r0,r12
    bge-    L020443fc
    mr      r12,r0
L020443fc:
    mr      r0,r12
    cmpwi   r6,0
    stw     r0,8(r7)
    beq-    L02044410
    stw     r0,0(r6)
L02044410:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
