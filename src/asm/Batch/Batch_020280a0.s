# Converted from the disassembly of 0x020280a0 (204 bytes). Name is a placeholder.
    .text
    .globl Batch_020280a0
Batch_020280a0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,8(r31)
    bl      ext_02030888
    lwz     r9,8(r31)
    stw     r3,24(r31)
    lwz     r3,84(r9)
    bl      ext_02185c38
    lwz     r8,20(r31)
    lwz     r9,44(r8)
    lfs     f0,784(r31)
    cmplw   r3,r9
    lwz     r12,48(r8)
    bge-    L020280ec
    mulli   r0,r3,108
    add     r12,r12,r0
L020280ec:
    lfs     f13,20(r12)
    fmuls   f0,f13,f0
    lwz     r12,20(r31)
    stfs    f0,36(r31)
    lwz     r0,44(r12)
    cmplw   r3,r0
    lwz     r11,48(r12)
    bge-    L02028124
    mulli   r10,r3,108
    add     r8,r11,r10
    lbz     r12,28(r8)
    extsb.  r12,r12
    blt-    L02028130
    b       L0202813c
L02028124:
    lbz     r12,28(r11)
    extsb.  r12,r12
    bge-    L0202813c
L02028130:
    li      r0,0
    stw     r0,32(r31)
    b       L02028158
L0202813c:
    cmplw   r3,r0
    bge-    L0202814c
    mulli   r10,r3,108
    add     r11,r11,r10
L0202814c:
    lbz     r0,28(r11)
    extsb   r0,r0
    stw     r0,32(r31)
L02028158:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
