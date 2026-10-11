# Converted from the disassembly of 0x024bd670 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd670
Batch_024bd670:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r0,56(r3)
    srwi.   r0,r0,31
    beq-    L024bd6d0
    lbz     r0,24(r3)
    cmpwi   r0,0
    beq-    L024bd6d0
    lwz     r12,28(r3)
    cmplwi  r12,2
    lwz     r12,32(r3)
    ble-    L024bd6b0
    addi    r12,r12,8
L024bd6b0:
    lwz     r30,0(r12)
    li      r4,0
    mr      r3,r30
    bl      ext_0247fc68
    mr      r3,r30
    li      r4,0
    bl      ext_0247f968
    b       L024bd700
L024bd6d0:
    lwz     r12,28(r3)
    cmplwi  r12,2
    lwz     r12,32(r3)
    ble-    L024bd6e4
    addi    r12,r12,8
L024bd6e4:
    lwz     r30,0(r12)
    li      r4,1
    mr      r3,r30
    bl      ext_0247fc68
    mr      r3,r30
    li      r4,1
    bl      ext_0247f968
L024bd700:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
