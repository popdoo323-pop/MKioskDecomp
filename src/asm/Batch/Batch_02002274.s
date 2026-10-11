# Converted from the disassembly of 0x02002274 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_02002274
Batch_02002274:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r30,8(r1)
    stw     r0,20(r1)
    lwz     r3,68(r31)
    bl      ext_02030888
    lwz     r11,76(r31)
    lwz     r10,164(r11)
    slwi    r9,r10,2
    addis   r8,r9,4096
    lwz     r0,116(r8)
    li      r30,0
    subf.   r0,r0,r3
    lwz     r12,92(r31)
    bge-    L020022bc
    mr      r0,r30
L020022bc:
    stw     r0,184(r31)
    lwz     r3,84(r12)
    bl      ext_020107f0
    stb     r30,197(r31)
    lis     r12,4120
    stb     r30,253(r31)
    stb     r30,196(r31)
    stw     r30,192(r31)
    stw     r30,188(r31)
    lfs     f0,-15608(r12)
    stfs    f0,200(r31)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
