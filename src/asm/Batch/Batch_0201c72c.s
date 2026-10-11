# Converted from the disassembly of 0x0201c72c (220 bytes). Name is a placeholder.
    .text
    .globl Batch_0201c72c
Batch_0201c72c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r4
    lwz     r8,4(r29)
    lwz     r9,20(r8)
    mr      r31,r3
    mtctr   r9
    lwz     r28,0(r31)
    mr      r3,r29
    bctrl
    lwz     r12,0(r29)
    lbz     r10,0(r12)
    li      r30,0
    cmpwi   r10,0
    lis     r0,8
    beq-    L0201c7a4
L0201c780:
    addi    r30,r30,1
    cmpw    r30,r0
    addi    r12,r12,1
    bgt-    L0201c7a0
    lbz     r11,0(r12)
    cmpwi   r11,0
    bne+    L0201c780
    b       L0201c7a4
L0201c7a0:
    li      r30,0
L0201c7a4:
    lwz     r7,8(r31)
    lwz     r12,4(r29)
    cmpw    r30,r7
    lwz     r0,20(r12)
    blt-    L0201c7bc
    addi    r30,r7,-1
L0201c7bc:
    mtctr   r0
    mr      r3,r29
    bctrl
    lwz     r4,0(r29)
    li      r6,0
    mr      r5,r30
    mr      r3,r28
    bl      ext_029aacf0
    li      r0,0
    stbx    r0,r28,r30
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
