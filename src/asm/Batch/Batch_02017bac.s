# Converted from the disassembly of 0x02017bac (96 bytes). Name is a placeholder.
    .text
    .globl Batch_02017bac
Batch_02017bac:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02015af0
    lis     r12,4117
    li      r10,0
    lwz     r12,-3296(r12)
    lwz     r11,88(r31)
    lwz     r0,572(r12)
    stw     r10,160(r31)
    stw     r0,152(r31)
    lwz     r0,164(r11)
    stw     r0,164(r31)
    bl      ext_020fd964
    lfs     f0,20(r3)
    stfs    f0,156(r31)
    bl      ext_020150ec
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
