# Converted from the disassembly of 0x024b5f78 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024b5f78
Batch_024b5f78:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4107
    lfs     f1,-32244(r12)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r11,0(r31)
    lwz     r3,144(r11)
    li      r4,0
    bl      ext_027413e8
    lis     r10,4122
    lwz     r3,56(r31)
    lfs     f1,-25272(r10)
    bl      ext_024b5118
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
