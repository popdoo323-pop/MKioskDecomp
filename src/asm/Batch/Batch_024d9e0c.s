# Converted from the disassembly of 0x024d9e0c (164 bytes). Name is a placeholder.
    .text
    .globl Batch_024d9e0c
Batch_024d9e0c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,200(r31)
    cmpwi   r0,0
    beq-    L024d9e94
    lwz     r11,80(r31)
    cmpwi   r11,0
    bne-    L024d9e80
    lwz     r11,68(r31)
    lwz     r3,0(r11)
    li      r4,2
    bl      ext_0247fce4
    lwz     r0,88(r31)
    addi    r12,r3,1
    cmplw   r0,r12
    blt-    L024d9e9c
    lwz     r3,200(r31)
    li      r4,0
    bl      ext_02480634
    mr      r3,r31
    bl      ext_0248db10
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024d9e80:
    cmpwi   r11,1
    bne-    L024d9e9c
    lwz     r0,88(r31)
    cmplwi  r0,80
    blt-    L024d9e9c
L024d9e94:
    mr      r3,r31
    bl      ext_0248d6a0
L024d9e9c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
