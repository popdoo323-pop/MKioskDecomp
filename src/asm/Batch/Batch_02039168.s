# Converted from the disassembly of 0x02039168 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_02039168
Batch_02039168:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,12(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    mr      r31,r3
    stw     r30,8(r1)
    mr      r3,r4
    stfs    f31,24(r1)
    fmr     f31,f1
    mr      r30,r5
    stw     r0,36(r1)
    bl      ext_02045bd4
    cmplwi  r3,14
    bge-    L020391bc
    mulli   r0,r3,24
    lwz     r12,456(r31)
    fmr     f1,f31
    mr      r4,r30
    add     r3,r12,r0
    bl      ext_0262efe0
L020391bc:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
