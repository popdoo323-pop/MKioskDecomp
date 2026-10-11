# Converted from the disassembly of 0x020188e8 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_020188e8
Batch_020188e8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,104(r31)
    lwz     r0,68(r12)
    cmpwi   r0,-1
    beq-    L02018924
    mr      r3,r31
    bl      ext_02016050
    cmpwi   r3,0
    beq-    L02018924
    mr      r3,r31
    bl      ext_02017d84
L02018924:
    mr      r3,r31
    bl      ext_02017248
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
