# Converted from the disassembly of 0x024bd3c4 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd3c4
Batch_024bd3c4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    li      r12,0
    stw     r0,20(r1)
    stb     r12,265(r3)
    mr      r31,r3
    stb     r12,264(r3)
    bl      ext_02484b58
    lwz     r12,84(r31)
    lwz     r0,236(r12)
    mtctr   r0
    mr      r3,r31
    bctrl
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
