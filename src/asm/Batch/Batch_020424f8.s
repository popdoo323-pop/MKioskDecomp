# Converted from the disassembly of 0x020424f8 (208 bytes). Name is a placeholder.
    .text
    .globl Batch_020424f8
Batch_020424f8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    li      r0,0
    lis     r3,4117
    stw     r0,424(r31)
    lwz     r3,9820(r3)
    bl      ext_0261c858
    li      r3,44
    bl      ext_0260128c
    mr.     r12,r3
    beq-    L02042540
    mr      r3,r12
    li      r4,0
    bl      ext_020379e0
    mr      r12,r3
L02042540:
    li      r3,36
    stw     r12,416(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    mr      r0,r3
    beq-    L02042560
    bl      ext_0262e834
    mr      r0,r3
L02042560:
    mr      r3,r31
    stw     r0,420(r31)
    bl      ext_020422f8
    mr      r3,r31
    bl      ext_020423d0
    mr      r3,r31
    bl      ext_020422f0
    lis     r4,4096
    addi    r4,r4,21644
    bl      ext_02039948
    lis     r3,4096
    addi    r3,r3,21664
    bl      ext_02045d30
    mr      r3,r31
    bl      ext_020422f0
    bl      ext_02039988
    mr      r3,r31
    bl      ext_020422f0
    lis     r4,4096
    addi    r4,r4,21676
    bl      ext_02039948
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
