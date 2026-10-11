# Converted from the disassembly of 0x024cd8a0 (456 bytes). Name is a placeholder.
    .text
    .globl Batch_024cd8a0
Batch_024cd8a0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r10,324(r3)
    cmpwi   r10,0
    mr      r31,r5
    beq-    L024cd8d4
    lwz     r0,308(r10)
    cmpwi   r0,0
    beq-    L024cd8d4
    cmpwi   r0,1
    bne-    L024cda54
L024cd8d4:
    lwz     r0,536(r3)
    cmpwi   r0,0
    bne-    L024cd9f0
    cmpwi   r31,0
    beq-    L024cd9c4
    lwz     r12,20(r4)
    cmplwi  r12,0
    beq-    L024cd93c
    cmplwi  r12,3
    blt-    L024cda54
    beq-    L024cd9a0
    cmplwi  r12,5
    blt-    L024cd978
    bne-    L024cda54
    addi    r4,r31,96
    bl      ext_024ccd1c
    li      r0,4
    mr      r3,r31
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_024c9ef8
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L024cd93c:
    li      r10,1
    addi    r4,r31,96
    stw     r10,576(r3)
    lwz     r11,576(r3)
    bl      ext_024ccd1c
    li      r12,5
    mr      r3,r31
    addi    r4,r1,12
    stw     r12,12(r1)
    bl      ext_024c9ef8
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L024cd978:
    li      r0,6
    mr      r3,r31
    addi    r4,r1,16
    stw     r0,16(r1)
    bl      ext_024c9ef8
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L024cd9a0:
    li      r10,0
    stw     r10,576(r3)
    lwz     r11,576(r3)
    bl      ext_024cd5e4
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L024cd9c4:
    lwz     r12,20(r4)
    cmpwi   r12,0
    bne-    L024cda54
    li      r0,1
    stw     r0,576(r3)
    lwz     r0,28(r1)
    lwz     r10,576(r3)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024cd9f0:
    cmpwi   r0,1
    bne-    L024cda28
    lwz     r0,20(r4)
    cmpwi   r0,3
    beq-    L024cda0c
    cmpwi   r0,4
    bne-    L024cda54
L024cda0c:
    mr      r4,r31
    bl      ext_024ca420
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L024cda28:
    cmpwi   r0,2
    bne-    L024cda54
    lwz     r0,20(r4)
    cmpwi   r0,0
    beq-    L024cda44
    cmpwi   r0,7
    bne-    L024cda54
L024cda44:
    li      r11,1
    stw     r11,576(r3)
    lwz     r12,576(r3)
    bl      ext_024cd49c
L024cda54:
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
