# Converted from the disassembly of 0x02046104 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_02046104
Batch_02046104:
    mflr    r0
    stw     r0,4(r1)
    lis     r12,4117
    stwu    r1,-24(r1)
    lwz     r12,-28988(r12)
    cmpwi   r12,0
    beq-    L02046140
    lwz     r0,260(r12)
    cmpwi   r0,0
    beq-    L02046140
    lwz     r10,0(r3)
    addi    r4,r1,8
    mr      r3,r0
    stw     r10,8(r1)
    bl      ext_0204d558
L02046140:
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
