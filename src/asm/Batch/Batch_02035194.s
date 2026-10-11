# Converted from the disassembly of 0x02035194 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_02035194
Batch_02035194:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r30,r3
    mr      r31,r5
    stw     r0,20(r1)
    bl      ext_020350f0
    mr      r4,r3
    cmplwi  r4,4
    bge-    L020351e4
    mulli   r11,r4,280
    lis     r10,4096
    mr      r3,r30
    li      r0,1
    lfs     f1,16660(r10)
    add     r12,r30,r11
    mr      r5,r31
    stb     r0,375(r12)
    bl      ext_020350c8
L020351e4:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
