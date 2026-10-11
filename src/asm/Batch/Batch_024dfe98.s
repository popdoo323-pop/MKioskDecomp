# Converted from the disassembly of 0x024dfe98 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024dfe98
Batch_024dfe98:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,212(r31)
    cmpwi   r12,8
    bne-    L024dfed0
    lwz     r3,208(r31)
    bl      ext_024c54b4
    lwz     r0,84(r31)
    cmplw   r0,r3
    blt-    L024dfeec
    b       L024dfee4
L024dfed0:
    mr      r3,r31
    bl      ext_024dfbdc
    lwz     r0,84(r31)
    cmplw   r0,r3
    blt-    L024dfeec
L024dfee4:
    mr      r3,r31
    bl      ext_0248d4fc
L024dfeec:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
