# Converted from the disassembly of 0x02045b20 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_02045b20
Batch_02045b20:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02045abc
    mr      r4,r31
    bl      ext_02592220
    cmpwi   r3,0
    bne-    L02045b50
    lis     r3,4096
    addi    r3,r3,23256
L02045b50:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
