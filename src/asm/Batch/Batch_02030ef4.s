# Converted from the disassembly of 0x02030ef4 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02030ef4
Batch_02030ef4:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r3,84(r31)
    fmr     f31,f1
    bl      ext_02185c90
    cmpwi   r3,0
    beq-    L02030f50
    lwz     r3,84(r31)
    bl      ext_02185c5c
    cmpwi   r3,0
    beq-    L02030f50
    lwz     r12,56(r31)
    lbz     r0,189(r12)
    cmpwi   r0,0
    bne-    L02030f50
    lis     r12,4096
    lfs     f31,16188(r12)
L02030f50:
    lwz     r12,88(r31)
    stfs    f31,72(r12)
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
