# Converted from the disassembly of 0x02032e94 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_02032e94
Batch_02032e94:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    li      r30,0
    mr      r31,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bl      ext_02032c7c
    cmpwi   r3,0
    beq-    L02032edc
    li      r5,0
    mr      r4,r29
    mr      r3,r31
    mr      r6,r5
    bl      ext_02032870
    mr      r30,r3
L02032edc:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r30
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
