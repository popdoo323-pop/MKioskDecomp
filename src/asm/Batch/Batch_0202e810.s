# Converted from the disassembly of 0x0202e810 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_0202e810
Batch_0202e810:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r0,53(r31)
    cmpwi   r0,3
    bne-    L0202e888
    lwz     r9,80(r31)
    lwz     r3,84(r9)
    bl      ext_02185cb4
    mr      r4,r3
    mr      r3,r31
    li      r5,1
    bl      ext_0202e7cc
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r12,568(r12)
    lbz     r10,53(r31)
    lwz     r0,36(r12)
    stb     r10,54(r31)
    cmpwi   r0,6
    li      r9,1
    blt-    L0202e874
    li      r9,2
L0202e874:
    li      r11,1
    stb     r9,53(r31)
    li      r0,0
    stb     r11,55(r31)
    stw     r0,56(r31)
L0202e888:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
