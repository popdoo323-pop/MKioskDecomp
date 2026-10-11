# Converted from the disassembly of 0x02030378 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_02030378
Batch_02030378:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r12,56(r30)
    lbz     r0,188(r12)
    cmpwi   r0,0
    beq-    L020303a8
    li      r3,5
    b       L020303d4
L020303a8:
    lwz     r11,64(r30)
    lwz     r12,92(r11)
    mr      r3,r30
    lwz     r31,28(r12)
    bl      ext_02030324
    cmpwi   r3,0
    beq-    L020303d0
    cmpwi   r31,3
    blt-    L020303d0
    lwz     r31,136(r30)
L020303d0:
    mr      r3,r31
L020303d4:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
