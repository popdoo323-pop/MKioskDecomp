# Converted from the disassembly of 0x024c5c54 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5c54
Batch_024c5c54:
    mflr    r0
    li      r9,2413
    li      r12,2411
    stw     r0,4(r1)
    li      r0,2999
    stwu    r1,-40(r1)
    stw     r0,8(r1)
    li      r0,2412
    stw     r12,12(r1)
    li      r12,2417
    stw     r9,20(r1)
    slwi    r9,r4,2
    stw     r0,16(r1)
    li      r11,2415
    stw     r12,28(r1)
    addi    r10,r1,8
    stw     r11,24(r1)
    lwzx    r4,r9,r10
    bl      ext_024c5b3c
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
