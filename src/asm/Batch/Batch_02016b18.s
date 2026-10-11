# Converted from the disassembly of 0x02016b18 (592 bytes). Name is a placeholder.
    .text
    .globl Batch_02016b18
Batch_02016b18:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lwz     r3,104(r31)
    bl      ext_02158e84
    cmpwi   r3,0
    lwz     r3,104(r31)
    beq-    L02016b68
    bl      ext_02158e98
    cmpwi   r3,0
    beq-    L02016d54
    mr      r3,r31
    bl      ext_02015c0c
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L02016b68:
    lwz     r0,80(r3)
    cmpwi   r0,2
    bne-    L02016bc8
    lwz     r10,104(r31)
    li      r0,1
    stb     r0,39(r31)
    stb     r0,64(r31)
    lwz     r11,76(r10)
    addi    r4,r1,12
    mr      r3,r31
    stw     r11,12(r1)
    bl      ext_02015ea8
    lwz     r11,104(r31)
    stb     r3,117(r31)
    lwz     r12,76(r11)
    mr      r3,r4
    stw     r12,12(r1)
    bl      ext_02016168
    stb     r3,119(r31)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L02016bc8:
    cmpwi   r0,1
    bne-    L02016c2c
    mr      r3,r31
    bl      ext_02015c0c
    li      r10,1
    lwz     r12,104(r31)
    li      r0,7
    stb     r10,39(r31)
    stb     r0,64(r31)
    lwz     r11,76(r12)
    addi    r4,r1,16
    stw     r11,16(r1)
    bl      ext_02015ea8
    lwz     r10,104(r31)
    stb     r3,117(r31)
    lwz     r12,76(r10)
    mr      r3,r4
    stw     r12,16(r1)
    bl      ext_02016168
    stb     r3,119(r31)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L02016c2c:
    lwz     r0,68(r3)
    cmpwi   r0,-1
    beq-    L02016d54
    lwz     r11,68(r3)
    addi    r4,r1,8
    mr      r3,r31
    stw     r11,8(r1)
    bl      ext_02015ea8
    stb     r3,117(r31)
    mr      r3,r4
    bl      ext_02016168
    cmpwi   r11,12
    stb     r3,119(r31)
    beq-    L02016c6c
    cmpwi   r11,14
    bne-    L02016c90
L02016c6c:
    li      r12,8
    li      r0,1
    stb     r12,64(r31)
    stb     r0,39(r31)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L02016c90:
    addi    r3,r1,8
    bl      ext_02016128
    cmpwi   r3,0
    beq-    L02016cc0
    li      r10,1
    stb     r10,39(r31)
    stb     r10,64(r31)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L02016cc0:
    addi    r3,r1,8
    bl      ext_020160e0
    cmpwi   r3,0
    beq-    L02016cf4
    li      r12,3
    li      r0,1
    stb     r12,64(r31)
    stb     r0,39(r31)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L02016cf4:
    addi    r3,r1,8
    bl      ext_02016148
    cmpwi   r3,0
    beq-    L02016d44
    lwz     r12,0(r31)
    lwz     r10,148(r12)
    mtctr   r10
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    beq-    L02016d44
    li      r11,7
    li      r0,1
    stb     r11,64(r31)
    stb     r0,39(r31)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L02016d44:
    li      r11,2
    li      r0,1
    stb     r11,64(r31)
    stb     r0,39(r31)
L02016d54:
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
