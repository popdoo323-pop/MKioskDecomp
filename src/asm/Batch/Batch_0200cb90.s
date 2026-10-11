# Converted from the disassembly of 0x0200cb90 (240 bytes). Name is a placeholder.
    .text
    .globl Batch_0200cb90
Batch_0200cb90:
    mflr    r0
    stwu    r1,-40(r1)
    stw     r30,32(r1)
    mr      r30,r4
    stw     r29,28(r1)
    stw     r31,36(r1)
    stw     r0,44(r1)
    mr      r29,r3
    bl      ext_0200b2e4
    lwz     r12,0(r30)
    lwz     r0,4(r30)
    stw     r12,16(r1)
    lwz     r10,16(r1)
    addi    r4,r1,8
    stw     r0,20(r1)
    lbz     r0,21(r1)
    mr      r31,r3
    stw     r10,8(r1)
    li      r12,0
    stb     r0,13(r1)
    mr      r3,r29
    stb     r12,12(r1)
    bl      ext_0200b2e4
    cmpwi   r3,0
    bne-    L0200cc20
    mr      r3,r29
    mr      r4,r30
    bl      ext_0200cb54
    lwz     r29,28(r1)
    lwz     r0,44(r1)
    lwz     r30,32(r1)
    mtlr    r0
    lwz     r31,36(r1)
    addi    r1,r1,40
    li      r3,1
    blr
L0200cc20:
    lbz     r0,24(r3)
    stb     r0,24(r31)
    lwz     r11,0(r3)
    stw     r11,0(r31)
    lwz     r9,0(r31)
    xori    r10,r9,2
    cntlzw  r11,r10
    srwi.   r9,r11,5
    li      r0,1
    bne-    L0200cc60
    lwz     r12,0(r31)
    xori    r12,r12,3
    cntlzw  r9,r12
    srwi.   r10,r9,5
    bne-    L0200cc60
    li      r0,0
L0200cc60:
    lwz     r29,28(r1)
    clrlwi  r3,r0,24
    lwz     r0,44(r1)
    lwz     r30,32(r1)
    mtlr    r0
    lwz     r31,36(r1)
    addi    r1,r1,40
    blr
