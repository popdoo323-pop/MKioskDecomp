# Converted from the disassembly of 0x02045ffc (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02045ffc
Batch_02045ffc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02045d0c
    mr      r4,r31
    bl      ext_02032ff4
    addic   r0,r3,-1
    subfe   r3,r0,r3
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
