# Converted from the disassembly of 0x0204270c (128 bytes). Name is a placeholder.
    .text
    .globl Batch_0204270c
Batch_0204270c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r30,8(r1)
    stw     r0,20(r1)
    bl      ext_02421764
    bl      ext_02423834
    cmpwi   r3,0
    bne-    L02042764
    lis     r12,4121
    lwz     r12,30564(r12)
    lwz     r30,1000(r12)
    addi    r3,r30,152
    bl      ext_0262bc20
    addi    r3,r30,152
    bl      ext_0262bc28
    lwz     r10,112(r31)
    lwz     r0,316(r10)
    mtctr   r0
    mr      r3,r31
    bctrl
L02042764:
    li      r11,0
    stb     r11,336(r31)
    stb     r11,338(r31)
    stb     r11,337(r31)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
