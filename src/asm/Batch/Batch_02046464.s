# Converted from the disassembly of 0x02046464 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_02046464
Batch_02046464:
    mflr    r0
    stwu    r1,-24(r1)
    stfd    f31,8(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,16(r1)
    lis     r12,4117
    stw     r0,28(r1)
    lwz     r12,-28988(r12)
    mr      r4,r3
    lwz     r3,240(r12)
    fmr     f31,f1
    bl      ext_020666dc
    cmpwi   r3,0
    beq-    L020464a4
    fmr     f1,f31
    bl      ext_0206dec4
L020464a4:
    lfs     f31,16(r1)
    lfd     f31,8(r1)
    isync
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
