# Converted from the disassembly of 0x024bfd50 (472 bytes). Name is a placeholder.
    .text
    .globl Batch_024bfd50
Batch_024bfd50:
    mflr    r0
    stwu    r1,-48(r1)
    stw     r30,40(r1)
    stw     r31,44(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r29,36(r1)
    stw     r0,52(r1)
    lwz     r0,0(r31)
    addi    r11,r30,96
    cmplw   r0,r11
    bne-    L024bfdb0
    lbz     r12,296(r30)
    cmpwi   r12,0
    beq-    L024bfdb0
    li      r12,2
    stw     r12,8(r1)
    lwz     r7,8(r1)
    stw     r7,24(r1)
    lwz     r12,20(r31)
    cmplwi  r12,3
    li      r29,1
    bge-    L024bfe3c
    b       L024bfe10
L024bfdb0:
    addi    r8,r30,160
    cmplw   r0,r8
    bne-    L024bfdec
    lbz     r10,297(r30)
    cmpwi   r10,0
    beq-    L024bfdec
    li      r12,3
    stw     r12,8(r1)
    lwz     r7,8(r1)
    stw     r7,28(r1)
    lwz     r12,20(r31)
    cmplwi  r12,3
    li      r29,0
    bge-    L024bfe3c
    b       L024bfe10
L024bfdec:
    mr      r3,r31
    bl      ext_0248a66c
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
L024bfe10:
    cmplwi  r12,0
    beq-    L024bfe6c
    cmplwi  r12,2
    beq-    L024bfeac
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
L024bfe3c:
    cmplwi  r12,4
    blt-    L024bfedc
    beq-    L024bfeac
    cmplwi  r12,7
    beq-    L024bfedc
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
L024bfe6c:
    lwz     r3,292(r30)
    cmpwi   r3,0
    beq-    L024bfe7c
    bl      ext_02045d30
L024bfe7c:
    lwz     r0,8(r1)
    addi    r4,r1,12
    mr      r3,r30
    stw     r0,12(r1)
    bl      ext_024bfc80
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
L024bfeac:
    lwz     r7,8(r1)
    addi    r4,r1,16
    mr      r3,r30
    stw     r7,16(r1)
    bl      ext_024bfb20
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
L024bfedc:
    lwz     r8,8(r1)
    addi    r4,r1,20
    mr      r3,r30
    stw     r8,20(r1)
    bl      ext_024bfce4
    lwz     r9,84(r30)
    lwz     r10,100(r9)
    mtctr   r10
    lwz     r5,24(r31)
    mr      r4,r29
    mr      r3,r30
    bctrl
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
