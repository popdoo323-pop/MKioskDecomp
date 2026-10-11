# Converted from the disassembly of 0x024ded58 (284 bytes). Name is a placeholder.
    .text
    .globl Batch_024ded58
Batch_024ded58:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,28(r1)
    lis     r12,4117
    stw     r0,36(r1)
    lwz     r12,3660(r12)
    lbz     r9,40(r12)
    cmpwi   r9,0
    mr      r31,r3
    bne-    L024dee60
    lwz     r10,20(r4)
    cmpwi   r10,2
    bne-    L024dee60
    lwz     r11,212(r31)
    cmpwi   r11,5
    lwz     r12,12(r4)
    bne-    L024dedf0
    cmpwi   r12,0
    bne-    L024dedb8
    li      r12,3
    stw     r12,260(r31)
    lwz     r0,260(r31)
    stw     r0,8(r1)
    b       L024dee50
L024dedb8:
    cmpwi   r12,1
    bne-    L024dedd4
    li      r0,4
    stw     r0,260(r31)
    lwz     r0,260(r31)
    stw     r0,12(r1)
    b       L024dee50
L024dedd4:
    cmpwi   r12,2
    bne-    L024dee50
    li      r10,2
    stw     r10,260(r31)
    lwz     r0,260(r31)
    stw     r0,16(r1)
    b       L024dee50
L024dedf0:
    cmpwi   r12,0
    bne-    L024dee38
    li      r11,1
    li      r9,25
    stw     r11,260(r31)
    lwz     r0,260(r31)
    mr      r3,r31
    stw     r9,128(r31)
    bl      ext_024de9b0
    lwz     r3,264(r31)
    cmpwi   r3,-1
    beq-    L024dee60
    bl      ext_02045d6c
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024dee38:
    cmpwi   r12,1
    bne-    L024dee60
    li      r0,2
    stw     r0,260(r31)
    lwz     r0,260(r31)
    stw     r0,20(r1)
L024dee50:
    li      r0,25
    mr      r3,r31
    stw     r0,128(r31)
    bl      ext_024dc76c
L024dee60:
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
