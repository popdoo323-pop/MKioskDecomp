# Converted from the disassembly of 0x024c5a80 (188 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5a80
Batch_024c5a80:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r0,0(r4)
    li      r31,1
    cmpwi   r0,2
    mr      r30,r3
    bne-    L024c5ab0
    li      r31,-1
L024c5ab0:
    lbz     r9,0(r30)
    add     r9,r9,r31
    extsb.  r4,r9
    stb     r9,0(r30)
    bge-    L024c5ad8
    lbz     r10,1(r30)
    addi    r4,r10,-1
    extsb   r4,r4
    stb     r4,0(r30)
    b       L024c5af0
L024c5ad8:
    lbz     r11,1(r30)
    extsb   r11,r11
    cmpw    r11,r4
    bgt-    L024c5af0
    li      r4,0
    stb     r4,0(r30)
L024c5af0:
    lwz     r29,4(r30)
    lwz     r0,20(r29)
    mtctr   r0
    mr      r3,r30
    bctrl
    lwz     r12,68(r29)
    mr      r4,r3
    mtctr   r12
    mr      r3,r30
    bctrl
    cmpwi   r3,0
    bne+    L024c5ab0
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
