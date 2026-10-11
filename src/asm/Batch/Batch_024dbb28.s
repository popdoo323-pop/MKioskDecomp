# Converted from the disassembly of 0x024dbb28 (236 bytes). Name is a placeholder.
    .text
    .globl Batch_024dbb28
Batch_024dbb28:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lbz     r9,240(r29)
    cmpwi   r9,0
    mr      r30,r4
    beq-    L024dbbf8
    cmplwi  r30,4
    addi    r31,r29,200
    lwz     r0,48(r29)
    bge-    L024dbb7c
    slwi    r10,r30,2
    cmpwi   r0,0
    li      r4,0
    lwzx    r6,r31,r10
    ble-    L024dbbd0
    b       L024dbb8c
L024dbb7c:
    cmpwi   r0,0
    li      r4,0
    lwz     r6,0(r31)
    ble-    L024dbbd0
L024dbb8c:
    lwz     r8,56(r29)
    mtctr   r0
    addi    r8,r8,-4
L024dbb98:
    lwzu    r11,4(r8)
    cmplw   r11,r6
    beq-    L024dbbb8
    addi    r4,r4,1
    bdnz+   L024dbb98
    cmplwi  r30,4
    blt-    L024dbbd8
L024dbbb4:
    b       L024dbbe0
L024dbbb8:
    cmpwi   r4,0
    blt-    L024dbbd0
    li      r5,1
    addi    r3,r29,48
    stb     r5,44(r29)
    bl      ext_02601b98
L024dbbd0:
    cmplwi  r30,4
    bge+    L024dbbb4
L024dbbd8:
    slwi    r0,r30,2
    add     r31,r31,r0
L024dbbe0:
    li      r0,1
    lwz     r5,0(r31)
    addi    r3,r29,48
    li      r4,3
    stb     r0,44(r29)
    bl      ext_02601d34
L024dbbf8:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
