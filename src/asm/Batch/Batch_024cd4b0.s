# Converted from the disassembly of 0x024cd4b0 (308 bytes). Name is a placeholder.
    .text
    .globl Batch_024cd4b0
Batch_024cd4b0:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r31,52(r1)
    mr      r31,r3
    stw     r0,60(r1)
    lwz     r0,92(r31)
    lwz     r12,0(r4)
    cmplw   r12,r0
    lwz     r10,4(r4)
    bge-    L024cd508
    lwz     r7,96(r31)
    cmplw   r10,r7
    bge-    L024cd508
    mullw   r8,r0,r10
    add     r9,r8,r12
    lwz     r11,100(r31)
    slwi    r0,r9,4
    add     r12,r11,r0
    lwz     r11,536(r31)
    cmpwi   r11,0
    bne-    L024cd59c
    b       L024cd518
L024cd508:
    lwz     r11,536(r31)
    cmpwi   r11,0
    lwz     r12,100(r31)
    bne-    L024cd59c
L024cd518:
    lbz     r10,8(r12)
    cmpwi   r10,1
    bne-    L024cd59c
    lwz     r3,0(r12)
    cmpwi   r3,0
    beq-    L024cd540
    li      r0,7
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_024c9ef8
L024cd540:
    addi    r3,r1,12
    bl      ext_0248a594
    stw     r31,20(r1)
    li      r7,0
    lwz     r11,0(r31)
    stb     r7,44(r1)
    stw     r11,24(r1)
    li      r12,7
    lwz     r0,168(r31)
    lwz     r3,460(r31)
    stw     r0,36(r1)
    stw     r12,32(r1)
    stw     r7,40(r1)
    lwz     r9,196(r3)
    lwz     r10,196(r9)
    mtctr   r10
    addi    r4,r1,12
    bctrl
    lwz     r0,60(r1)
    lwz     r31,52(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
L024cd59c:
    cmpwi   r11,1
    bne-    L024cd5c0
    mr      r3,r31
    bl      ext_024cd098
    lwz     r0,60(r1)
    lwz     r31,52(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
L024cd5c0:
    cmpwi   r11,2
    bne-    L024cd5d0
    mr      r3,r31
    bl      ext_024cd49c
L024cd5d0:
    lwz     r0,60(r1)
    lwz     r31,52(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
