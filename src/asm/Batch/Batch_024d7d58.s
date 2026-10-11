# Converted from the disassembly of 0x024d7d58 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024d7d58
Batch_024d7d58:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4107
    lfs     f1,-16612(r12)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r11,32(r31)
    lwz     r3,0(r11)
    li      r4,2
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    lwz     r12,32(r31)
    lwz     r31,0(r12)
    li      r4,1
    mr      r3,r31
    bl      ext_0247fc68
    mr      r3,r31
    li      r4,1
    bl      ext_0247f968
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
