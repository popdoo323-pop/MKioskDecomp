# Converted from the disassembly of 0x02006554 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02006554
Batch_02006554:
    lis     r0,0
    lis     r12,4120
    ori     r0,r0,65535
    addi    r12,r12,-15452
    lis     r10,4120
    sth     r0,2(r12)
    li      r7,0
    sthu    r0,-15444(r10)
    sth     r0,2(r10)
    lis     r8,4120
    lis     r9,4120
    sth     r0,0(r12)
    addi    r8,r8,-15440
    sthu    r7,-15436(r9)
    sth     r0,2(r8)
    lis     r11,4120
    sth     r0,0(r8)
    sthu    r0,-15448(r11)
    sth     r0,2(r11)
    sth     r7,2(r9)
    blr
