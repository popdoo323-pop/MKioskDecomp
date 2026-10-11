# Converted from the disassembly of 0x024d0210 (184 bytes). Name is a placeholder.
    .text
    .globl Batch_024d0210
Batch_024d0210:
    mflr    r0
    stwu    r1,-64(r1)
    stw     r31,60(r1)
    mr      r31,r3
    stw     r0,68(r1)
    lwz     r0,104(r31)
    cmpwi   r0,0
    ble-    L024d02b4
    lwz     r11,108(r31)
    cmpwi   r11,0
    ble-    L024d02b4
    lwz     r12,160(r31)
    lwz     r0,168(r31)
    cmplw   r12,r0
    bne-    L024d025c
    lwz     r11,164(r31)
    lwz     r12,172(r31)
    cmplw   r11,r12
    beq-    L024d02b4
L024d025c:
    addi    r3,r1,20
    bl      ext_0248a594
    lwz     r0,416(r31)
    mr      r3,r31
    li      r4,2
    addi    r5,r1,20
    stw     r0,44(r1)
    bl      ext_02484e4c
    lbz     r0,52(r1)
    lwz     r11,168(r31)
    lwz     r12,172(r31)
    stw     r11,160(r31)
    cmpwi   r0,0
    stw     r12,164(r31)
    bne-    L024d02b4
    mr      r4,r31
    addi    r3,r1,8
    bl      ext_02480274
    lis     r3,4107
    lfs     f1,8(r1)
    addi    r3,r3,-20104
    bl      ext_02045eec
L024d02b4:
    lwz     r0,68(r1)
    lwz     r31,60(r1)
    mtlr    r0
    addi    r1,r1,64
    blr
