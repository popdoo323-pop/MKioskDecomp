# Converted from the disassembly of 0x0200aa10 (460 bytes). Name is a placeholder.
    .text
    .globl Batch_0200aa10
Batch_0200aa10:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r9,0(r31)
    lwz     r30,8(r31)
    slwi    r6,r9,2
    add     r10,r30,r6
    cmplw   r30,r10
    beq-    L0200aa70
L0200aa40:
    lwz     r3,0(r30)
    lwz     r11,28(r3)
    lwz     r12,12(r11)
    mtctr   r12
    bctrl
    lwz     r0,0(r31)
    lwz     r6,8(r31)
    slwi    r0,r0,2
    addi    r30,r30,4
    add     r5,r6,r0
    cmplw   r30,r5
    bne+    L0200aa40
L0200aa70:
    li      r30,0
    lwz     r9,180(r31)
    mr      r7,r30
    cmpw    r7,r9
    bge-    L0200aac4
    li      r8,-1
L0200aa88:
    cmplw   r7,r9
    lwz     r10,184(r31)
    bge-    L0200aa98
    add     r10,r10,r7
L0200aa98:
    stb     r8,0(r10)
    lwz     r0,188(r31)
    cmplw   r7,r0
    lwz     r12,192(r31)
    bge-    L0200aab0
    add     r12,r12,r7
L0200aab0:
    stb     r8,0(r12)
    lwz     r9,180(r31)
    addi    r7,r7,1
    cmpw    r7,r9
    blt+    L0200aa88
L0200aac4:
    mr      r3,r31
    bl      ext_0200a8f8
    stw     r30,208(r31)
    li      r12,253
    stw     r30,44(r31)
    li      r10,-1
    stw     r12,140(r31)
    li      r0,0
    stb     r10,92(r31)
    stb     r10,94(r31)
    li      r7,5
    stb     r0,89(r31)
    stw     r7,80(r31)
    stb     r0,88(r31)
    stb     r10,93(r31)
    stb     r30,226(r31)
    lwz     r7,228(r31)
    stw     r30,68(r31)
    stw     r30,216(r31)
    mulli   r8,r7,28
    stw     r12,84(r31)
    lwz     r11,232(r31)
    stw     r30,212(r31)
    add     r7,r11,r8
    stb     r30,224(r31)
    cmplw   r11,r7
    stw     r30,56(r31)
    stb     r30,104(r31)
    stw     r30,204(r31)
    stw     r30,200(r31)
    stw     r30,168(r31)
    stw     r30,20(r31)
    stw     r30,196(r31)
    stw     r30,156(r31)
    stw     r30,32(r31)
    stb     r30,225(r31)
    beq-    L0200abc0
L0200ab58:
    lwz     r4,8(r11)
    li      r9,0
    stw     r12,0(r11)
    cmpw    r9,r4
    stb     r0,4(r11)
    bge-    L0200aba0
    lwz     r8,20(r11)
    li      r10,0
L0200ab78:
    lwz     r5,16(r11)
    lwzx    r4,r5,r10
    addi    r9,r9,1
    stw     r8,0(r4)
    lwz     r6,8(r11)
    mr      r8,r4
    addi    r10,r10,4
    cmpw    r9,r6
    stw     r8,20(r11)
    blt+    L0200ab78
L0200aba0:
    stw     r0,8(r11)
    lwz     r7,228(r31)
    lwz     r9,232(r31)
    mulli   r8,r7,28
    addi    r11,r11,28
    add     r7,r9,r8
    cmplw   r11,r7
    bne+    L0200ab58
L0200abc0:
    stb     r30,236(r31)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
