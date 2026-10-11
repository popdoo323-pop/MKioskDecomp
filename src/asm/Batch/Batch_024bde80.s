# Converted from the disassembly of 0x024bde80 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024bde80
Batch_024bde80:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_024bd550
    li      r12,2
    stw     r12,252(r31)
    lis     r12,4117
    lwz     r0,252(r31)
    lwz     r12,3660(r12)
    li      r0,1
    lwz     r11,68(r12)
    stb     r0,248(r31)
    stw     r11,124(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
