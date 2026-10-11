# Converted from the disassembly of 0x024dffb4 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024dffb4
Batch_024dffb4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,212(r31)
    cmpwi   r12,8
    bne-    L024dffec
    lwz     r3,208(r31)
    bl      ext_024c551c
    lwz     r0,84(r31)
    cmplw   r0,r3
    blt-    L024e0008
    b       L024e0000
L024dffec:
    mr      r3,r31
    bl      ext_024dfbe4
    lwz     r0,84(r31)
    cmplw   r0,r3
    blt-    L024e0008
L024e0000:
    mr      r3,r31
    bl      ext_0248d6a0
L024e0008:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
