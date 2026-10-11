# Converted from the disassembly of 0x02017e38 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_02017e38
Batch_02017e38:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,104(r31)
    lwz     r0,80(r12)
    cmpwi   r0,2
    bne-    L02017e74
    mr      r3,r31
    bl      ext_02016050
    cmpwi   r3,0
    beq-    L02017e74
    mr      r3,r31
    bl      ext_02017d84
L02017e74:
    mr      r3,r31
    bl      ext_02016dc4
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
