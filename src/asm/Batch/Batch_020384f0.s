# Converted from the disassembly of 0x020384f0 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_020384f0
Batch_020384f0:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    stw     r31,12(r1)
    stw     r0,36(r1)
    lbz     r10,548(r3)
    cmpwi   r10,0
    fmr     f31,f1
    beq-    L0203855c
    lis     r11,4119
    lwzu    r12,4456(r11)
    cmpwi   r12,0
    lis     r31,4119
    bne-    L0203854c
    li      r0,1
    addi    r3,r31,512
    stw     r0,0(r11)
    bl      ext_0258a70c
    lis     r3,4117
    addi    r3,r3,-29112
    bl      ext_0292e734
L0203854c:
    fmr     f1,f31
    li      r4,0
    addi    r3,r31,512
    bl      ext_0258be54
L0203855c:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
