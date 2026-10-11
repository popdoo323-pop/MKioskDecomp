# Converted from the disassembly of 0x024d9b0c (136 bytes). Name is a placeholder.
    .text
    .globl Batch_024d9b0c
Batch_024d9b0c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,80(r31)
    cmpwi   r12,0
    bne-    L024d9b70
    lwz     r0,88(r31)
    cmplwi  r0,120
    bge-    L024d9b80
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L024d9b48
    lwz     r3,416(r3)
L024d9b48:
    bl      ext_0241e93c
    cmpwi   r3,0
    beq-    L024d9b80
    mr      r3,r31
    bl      ext_0248db10
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024d9b70:
    cmpwi   r12,1
    bne-    L024d9b80
    mr      r3,r31
    bl      ext_0248d4fc
L024d9b80:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
