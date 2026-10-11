# Converted from the disassembly of 0x024c7644 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_024c7644
Batch_024c7644:
    mflr    r0
    li      r9,9093
    li      r12,9092
    stw     r0,4(r1)
    li      r10,9094
    stwu    r1,-32(r1)
    stw     r12,12(r1)
    addi    r8,r1,8
    stw     r9,16(r1)
    li      r0,9091
    stw     r10,20(r1)
    slwi    r12,r4,2
    stw     r0,8(r1)
    lwzx    r4,r12,r8
    bl      ext_024c5b3c
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
