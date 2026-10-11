# Converted from the disassembly of 0x0203e854 (472 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e854
Batch_0203e854:
    mflr    r0
    stwu    r1,-48(r1)
    stw     r29,36(r1)
    stw     r30,40(r1)
    stw     r31,44(r1)
    stw     r0,52(r1)
    lwz     r9,0(r4)
    cmplwi  r9,5
    mr      r30,r3
    bge-    L0203e8a8
    cmplwi  r9,1
    beq-    L0203e8e0
    cmplwi  r9,4
    beq-    L0203e900
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
L0203e8a8:
    cmplwi  r9,5
    beq-    L0203e938
    cmplwi  r9,7
    blt-    L0203ea10
    beq-    L0203e9a8
    cmplwi  r9,9
    ble-    L0203e9e0
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
L0203e8e0:
    lwz     r4,168(r30)
    li      r11,-1
    lwz     r3,224(r30)
    addi    r6,r1,8
    li      r5,0
    stw     r11,8(r1)
    bl      ext_0204040c
    b       L0203ea10
L0203e900:
    mr      r3,r30
    bl      ext_0203d410
    lwz     r10,192(r3)
    lwz     r31,168(r30)
    mr      r3,r30
    stw     r10,16(r1)
    bl      ext_0203d410
    bl      ext_0205c20c
    mr      r5,r3
    lwz     r3,224(r30)
    addi    r6,r1,16
    mr      r4,r31
    bl      ext_0204040c
    b       L0203ea10
L0203e938:
    lwz     r29,224(r30)
    lwz     r31,168(r30)
    lwz     r0,4(r29)
    cmplw   r0,r31
    beq-    L0203e974
    mr      r3,r30
    bl      ext_0203d410
    li      r5,0
    lwz     r12,192(r3)
    mr      r3,r29
    mr      r4,r31
    addi    r6,r1,20
    stw     r12,20(r1)
    bl      ext_0204040c
    b       L0203ea10
L0203e974:
    lwz     r12,28(r29)
    cmpwi   r12,0
    bge-    L0203ea10
    mr      r3,r30
    bl      ext_0203d410
    li      r5,0
    lwz     r0,192(r3)
    mr      r3,r29
    mr      r4,r31
    addi    r6,r1,24
    stw     r0,24(r1)
    bl      ext_0204040c
    b       L0203ea10
L0203e9a8:
    mr      r3,r30
    bl      ext_0203d410
    lwz     r0,192(r3)
    lwz     r31,172(r30)
    mr      r3,r30
    stw     r0,28(r1)
    bl      ext_0203d410
    bl      ext_0205cb70
    mr      r5,r3
    lwz     r3,224(r30)
    addi    r6,r1,28
    mr      r4,r31
    bl      ext_0204040c
    b       L0203ea10
L0203e9e0:
    lwz     r29,224(r30)
    lwz     r31,168(r30)
    lwz     r0,4(r29)
    cmplw   r0,r31
    beq-    L0203ea10
    li      r6,-1
    li      r5,0
    mr      r3,r29
    stw     r6,12(r1)
    addi    r6,r1,12
    mr      r4,r31
    bl      ext_0204040c
L0203ea10:
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
