# Converted from the disassembly of 0x02033904 (144 bytes). Name is a placeholder.
    .text
    .globl Batch_02033904
Batch_02033904:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L02033928
    li      r3,28
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02033984
L02033928:
    lis     r12,4096
    lis     r10,4120
    lfs     f0,16664(r12)
    lis     r12,4120
    addi    r10,r10,-12080
    lis     r11,4120
    addi    r12,r12,-12072
    stw     r10,0(r3)
    addi    r11,r11,-12076
    stw     r12,8(r3)
    stw     r11,4(r3)
    lfs     f13,0(r10)
    fdivs   f13,f0,f13
    stfs    f13,12(r3)
    lfs     f13,0(r11)
    fdivs   f13,f0,f13
    stfs    f13,16(r3)
    lfs     f13,0(r12)
    fdivs   f0,f0,f13
    stfs    f0,20(r3)
    lfs     f0,0(r12)
    fmuls   f0,f0,f0
    stfs    f0,24(r3)
L02033984:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
