# Converted from the disassembly of 0x020e2580 (44 bytes). Name is a placeholder.
    .text
    .globl Scan_Gap_020e2580
Scan_Gap_020e2580:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_020df528
    lwz     r3,4(r3)
    li      r4,1
    bl      ext_021762c0
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
