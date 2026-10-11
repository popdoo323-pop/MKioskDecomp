# Converted from the disassembly of 0x024e5e90 (228 bytes). Name is a placeholder.
    .text
    .globl Batch_024e5e90
Batch_024e5e90:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r4
    mr      r30,r3
    stw     r0,20(r1)
    bne-    L024e5ef0
    bl      ext_024ae91c
    li      r12,1
    slwi    r9,r31,3
    li      r10,3
    stb     r12,249(r3)
    add     r11,r30,r9
    stwu    r10,672(r11)
    lwz     r0,164(r30)
    slw     r10,r12,r31
    mr      r3,r30
    lwz     r11,0(r11)
    or      r0,r0,r10
    mr      r4,r31
    stw     r0,164(r30)
    bl      ext_0248e190
    b       L024e5f5c
L024e5ef0:
    cmplwi  r31,4
    bge-    L024e5f30
    slwi    r9,r31,3
    li      r10,3
    add     r11,r30,r9
    li      r12,1
    stwu    r10,672(r11)
    lwz     r0,164(r30)
    slw     r10,r12,r31
    lwz     r11,0(r11)
    mr      r3,r30
    or      r0,r0,r10
    mr      r4,r31
    stw     r0,164(r30)
    bl      ext_0248e190
    b       L024e5f5c
L024e5f30:
    li      r10,3
    lwz     r0,164(r30)
    li      r12,1
    stw     r10,672(r30)
    slw     r10,r12,r31
    lwz     r11,672(r30)
    or      r0,r0,r10
    mr      r4,r31
    mr      r3,r30
    stw     r0,164(r30)
    bl      ext_0248e190
L024e5f5c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
