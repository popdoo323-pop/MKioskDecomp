# Converted from the disassembly of 0x024c7ea0 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024c7ea0
Batch_024c7ea0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r7,4107
    addi    r7,r7,-22876
    lis     r4,4107
    lis     r5,4107
    lis     r6,4107
    addi    r4,r4,-22912
    addi    r5,r5,-22900
    mr      r31,r3
    addi    r6,r6,-22888
    stw     r0,20(r1)
    bl      ext_024c7b10
    lwz     r12,4(r31)
    lwz     r3,172(r12)
    mr      r4,r31
    bl      ext_02486154
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
