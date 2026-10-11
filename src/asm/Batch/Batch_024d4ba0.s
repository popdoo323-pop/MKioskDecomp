# Converted from the disassembly of 0x024d4ba0 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024d4ba0
Batch_024d4ba0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    li      r4,0
    mr      r5,r4
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_024cb9a4
    lis     r11,4124
    lwzu    r0,26336(r11)
    stw     r0,636(r31)
    lwz     r0,4(r11)
    mr      r3,r31
    addi    r4,r31,636
    stw     r0,640(r31)
    bl      ext_024cbcdc
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
