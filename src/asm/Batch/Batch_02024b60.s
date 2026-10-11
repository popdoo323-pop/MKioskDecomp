# Converted from the disassembly of 0x02024b60 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_02024b60
Batch_02024b60:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    cmpwi   r3,0
    stw     r0,20(r1)
    bne-    L02024b8c
    li      r3,20
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02024bb8
L02024b8c:
    stw     r31,4(r3)
    li      r0,0
    lis     r12,4096
    stb     r0,18(r3)
    lfs     f0,10636(r12)
    stw     r0,0(r3)
    stb     r0,17(r3)
    stb     r0,16(r3)
    stw     r0,8(r3)
    stfs    f0,12(r3)
    bl      ext_02024b38
L02024bb8:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
