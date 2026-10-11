# Converted from the disassembly of 0x02030a48 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_02030a48
Batch_02030a48:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02030568
    mr      r3,r31
    bl      ext_02030660
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r0,424(r12)
    cmpwi   r0,4
    bne-    L02030a94
    lwz     r0,96(r31)
    cmpwi   r0,1
    bne-    L02030a94
    lwz     r3,84(r31)
    li      r4,0
    bl      ext_021862ec
L02030a94:
    mr      r3,r31
    bl      ext_02030908
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
