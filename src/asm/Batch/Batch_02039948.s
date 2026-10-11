# Converted from the disassembly of 0x02039948 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_02039948
Batch_02039948:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    stw     r0,20(r1)
    bl      ext_02039924
    li      r6,0
    li      r5,-1
    mr      r4,r31
    mr      r7,r6
    bl      ext_02633bcc
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
