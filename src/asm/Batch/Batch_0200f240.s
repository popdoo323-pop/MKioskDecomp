# Converted from the disassembly of 0x0200f240 (444 bytes). Name is a placeholder.
    .text
    .globl Batch_0200f240
Batch_0200f240:
    stwu    r1,-48(r1)
    stmw    r26,24(r1)
    mr      r27,r3
    addi    r30,r27,204
    mr      r3,r30
    mr      r28,r4
    mflr    r0
    stw     r0,52(r1)
    bl      ext_0262b790
    lwz     r3,104(r27)
    li      r9,4
    lwz     r7,256(r3)
    stw     r9,8(r1)
    lwz     r0,28(r7)
    mtctr   r0
    mr      r4,r28
    addi    r5,r1,8
    bctrl
    lwz     r0,128(r27)
    li      r26,0
    lwz     r12,116(r27)
    stw     r3,12(r1)
    cmpw    r12,r0
    stw     r4,16(r1)
    blt-    L0200f2ec
    lwz     r12,0(r28)
    li      r31,0
    stw     r12,0(r31)
    lwz     r0,4(r28)
    stw     r0,4(r31)
    lwz     r0,8(r28)
    stw     r0,8(r31)
    lwz     r0,12(r28)
    stw     r0,12(r31)
    lbz     r5,16(r28)
    stb     r5,16(r31)
    lwz     r8,12(r1)
    stw     r8,0(r31)
    lwz     r10,16(r1)
    mr      r3,r30
    stw     r10,4(r31)
    bl      ext_0262b7c4
    b       L0200f3e8
L0200f2ec:
    lwz     r31,120(r27)
    cmpwi   r31,0
    beq-    L0200f300
    lwz     r6,0(r31)
    stw     r6,120(r27)
L0200f300:
    cmpwi   r31,0
    beq-    L0200f38c
    mr.     r29,r31
    bne-    L0200f320
    li      r3,24
    bl      ext_0260128c
    mr.     r29,r3
    beq-    L0200f368
L0200f320:
    lis     r7,4096
    addi    r7,r7,2584
    mr.     r3,r29
    stw     r7,20(r29)
    bne-    L0200f344
    li      r3,8
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0200f354
L0200f344:
    stb     r26,5(r3)
    li      r8,253
    stb     r26,4(r3)
    stw     r8,0(r3)
L0200f354:
    li      r0,-1
    stb     r26,16(r29)
    li      r9,8
    stw     r0,12(r29)
    stw     r9,8(r29)
L0200f368:
    stw     r26,24(r31)
    addi    r4,r31,24
    addi    r3,r27,108
    stw     r26,28(r31)
    bl      ext_026017c4
    lwz     r11,116(r27)
    addi    r11,r11,1
    stw     r11,116(r27)
    b       L0200f3a8
L0200f38c:
    li      r4,24
    addi    r3,r27,108
    li      r31,0
    bl      ext_026017c4
    lwz     r11,116(r27)
    addi    r11,r11,1
    stw     r11,116(r27)
L0200f3a8:
    lwz     r12,0(r28)
    stw     r12,0(r31)
    lwz     r0,4(r28)
    stw     r0,4(r31)
    lwz     r0,8(r28)
    stw     r0,8(r31)
    lwz     r0,12(r28)
    stw     r0,12(r31)
    lbz     r5,16(r28)
    stb     r5,16(r31)
    lwz     r8,12(r1)
    stw     r8,0(r31)
    lwz     r10,16(r1)
    mr      r3,r30
    stw     r10,4(r31)
    bl      ext_0262b7c4
L0200f3e8:
    lmw     r26,24(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
