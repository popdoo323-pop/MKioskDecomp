# Converted from the disassembly of 0x02045820 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_02045820
Batch_02045820:
    mflr    r0
    stwu    r1,-16(r1)
    addi    r6,r1,9
    stw     r31,12(r1)
    li      r10,0
    stb     r10,9(r1)
    mr      r31,r3
    stb     r10,8(r1)
    addi    r5,r1,8
    stw     r0,20(r1)
    bl      ext_020455e4
    lbz     r11,8(r1)
    cmpwi   r11,0
    beq-    L02045864
    addi    r3,r31,90
    li      r4,2
    bl      ext_029a9a78
L02045864:
    lbz     r0,9(r1)
    cmpwi   r0,0
    beq-    L0204587c
    addi    r3,r31,92
    li      r4,2
    bl      ext_029a9a78
L0204587c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
