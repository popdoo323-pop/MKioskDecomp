# Converted from the disassembly of 0x02007e80 (224 bytes). Name is a placeholder.
    .text
    .globl Batch_02007e80
Batch_02007e80:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    bne-    L02007eb0
    li      r3,560
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L02007f44
L02007eb0:
    mr      r3,r30
    mr      r4,r31
    bl      ext_02006768
    lis     r12,4096
    lwz     r11,60(r30)
    li      r0,0
    addi    r12,r12,2264
    stw     r0,548(r30)
    stw     r12,0(r30)
    stw     r0,552(r30)
    stw     r0,544(r30)
    stw     r0,556(r30)
    lwz     r3,84(r11)
    bl      ext_02185c38
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r0,68(r12)
    cmpw    r3,r0
    blt-    L02007f14
    li      r31,0
    mr      r3,r31
    bl      ext_02008780
    cmpwi   r3,0
    beq-    L02007f3c
    b       L02007f40
L02007f14:
    cmplw   r3,r0
    li      r31,0
    bge-    L02007f2c
    lwz     r0,76(r12)
    slwi    r10,r3,2
    lwzx    r31,r10,r0
L02007f2c:
    mr      r3,r31
    bl      ext_02008780
    cmpwi   r3,0
    bne-    L02007f40
L02007f3c:
    li      r31,0
L02007f40:
    stw     r31,544(r30)
L02007f44:
    lwz     r0,20(r1)
    mr      r3,r30
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
