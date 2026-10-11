# Converted from the disassembly of 0x0200a8f8 (280 bytes). Name is a placeholder.
    .text
    .globl Batch_0200a8f8
Batch_0200a8f8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r3
    li      r30,0
    stw     r29,12(r1)
    stw     r0,28(r1)
    lwz     r0,188(r31)
    mr      r8,r30
    stb     r30,224(r31)
    cmpw    r8,r0
    stb     r30,236(r31)
    stb     r30,225(r31)
    stb     r30,226(r31)
    bge-    L0200a978
    li      r10,-1
L0200a93c:
    cmplw   r8,r0
    lwz     r11,192(r31)
    bge-    L0200a94c
    add     r11,r11,r8
L0200a94c:
    stb     r10,0(r11)
    lwz     r9,180(r31)
    cmplw   r8,r9
    lwz     r12,184(r31)
    bge-    L0200a964
    add     r12,r12,r8
L0200a964:
    stb     r10,0(r12)
    lwz     r0,188(r31)
    addi    r8,r8,1
    cmpw    r8,r0
    blt+    L0200a93c
L0200a978:
    lis     r29,4119
    lwz     r12,-4780(r29)
    lwz     r6,24(r12)
    lwz     r3,164(r6)
    bl      ext_027b13cc
    lwz     r10,-4780(r29)
    lwz     r6,24(r10)
    lwz     r7,164(r6)
    stb     r30,1228(r7)
    lwz     r6,0(r31)
    lwz     r11,8(r31)
    slwi    r0,r6,2
    add     r0,r11,r0
    cmplw   r11,r0
    beq-    L0200a9e8
    li      r0,0
    li      r9,-1
L0200a9bc:
    lwz     r6,0(r11)
    stb     r0,24(r6)
    lwz     r8,0(r11)
    stb     r9,14(r8)
    lwz     r10,0(r31)
    lwz     r7,8(r31)
    slwi    r8,r10,2
    addi    r11,r11,4
    add     r12,r7,r8
    cmplw   r11,r12
    bne+    L0200a9bc
L0200a9e8:
    stw     r30,244(r31)
    stw     r30,240(r31)
    stw     r30,248(r31)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
