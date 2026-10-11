# Converted from the disassembly of 0x020107f0 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_020107f0
Batch_020107f0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020105fc
    lis     r11,4096
    lbz     r0,37(r31)
    li      r12,-1
    lfs     f0,4304(r11)
    stw     r12,132(r31)
    stw     r12,128(r31)
    li      r12,1
    stb     r0,38(r31)
    stb     r12,39(r31)
    li      r12,0
    stfs    f0,152(r31)
    stw     r12,40(r31)
    stfs    f0,140(r31)
    stb     r12,233(r31)
    stfs    f0,124(r31)
    stb     r12,37(r31)
    stfs    f0,168(r31)
    stfs    f0,120(r31)
    stfs    f0,144(r31)
    stfs    f0,164(r31)
    stfs    f0,148(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
