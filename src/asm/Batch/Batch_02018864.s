# Converted from the disassembly of 0x02018864 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_02018864
Batch_02018864:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02016050
    cmpwi   r3,0
    beq-    L0201888c
    mr      r3,r31
    bl      ext_02017d84
L0201888c:
    mr      r3,r31
    bl      ext_02017148
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
