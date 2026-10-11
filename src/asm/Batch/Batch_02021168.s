# Converted from the disassembly of 0x02021168 (248 bytes). Name is a placeholder.
    .text
    .globl Batch_02021168
Batch_02021168:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r0,36(r1)
    bl      ext_020150bc
    cmpwi   r3,0
    beq-    L02021240
    mr      r3,r31
    bl      ext_0201fcdc
    lis     r12,4120
    lfs     f31,-13548(r12)
    bl      ext_020fe084
    mr      r4,r3
    fmr     f1,f31
    mr      r3,r31
    addi    r5,r31,36
    li      r6,0
    bl      ext_02020688
    bl      ext_020fe430
    fmr     f1,f31
    mr      r4,r3
    mr      r3,r31
    addi    r5,r31,96
    li      r6,1
    bl      ext_02020688
    bl      ext_020fe084
    mr      r4,r3
    li      r7,0
    addi    r6,r31,14196
    mr      r3,r31
    addi    r5,r31,14156
    bl      ext_02020e3c
    bl      ext_020fe430
    mr      r4,r3
    li      r7,1
    addi    r6,r31,14276
    addi    r5,r31,14236
    mr      r3,r31
    bl      ext_02020e3c
    li      r5,0
    addi    r4,r31,14316
    mr      r3,r31
    bl      ext_020210a0
    bl      ext_020fe430
    cmpwi   r3,0
    beq-    L02021240
    li      r5,1
    addi    r4,r31,14320
    mr      r3,r31
    bl      ext_020210a0
L02021240:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
