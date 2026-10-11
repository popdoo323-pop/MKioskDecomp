# Converted from the disassembly of 0x020248c4 (236 bytes). Name is a placeholder.
    .text
    .globl Batch_020248c4
Batch_020248c4:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r31,52(r1)
    mr      r31,r3
    stw     r0,60(r1)
    bl      ext_020fec8c
    stw     r3,8(r1)
    lhz     r11,8(r1)
    lhz     r12,10(r1)
    sth     r11,12(r1)
    sth     r12,14(r1)
    lwz     r11,12(r1)
    addi    r3,r1,16
    stw     r11,16(r1)
    bl      ext_020fd9fc
    lwz     r12,0(r3)
    stw     r12,36(r1)
    lwz     r0,4(r3)
    lwz     r9,44(r31)
    stw     r0,40(r1)
    lwz     r8,8(r3)
    cmplwi  r9,1
    stw     r8,44(r1)
    beq-    L02024940
    cmplwi  r9,2
    beq-    L02024970
    lwz     r0,60(r1)
    lwz     r31,52(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
L02024940:
    addi    r3,r1,36
    bl      ext_020fe2a8
    stw     r3,20(r1)
    lhz     r12,20(r1)
    lhz     r0,22(r1)
    sth     r12,24(r1)
    sth     r0,26(r1)
    lwz     r0,24(r1)
    srwi    r8,r0,16
    sth     r0,24(r31)
    sth     r8,22(r31)
    b       L0202499c
L02024970:
    addi    r3,r1,36
    bl      ext_020fe64c
    stw     r3,28(r1)
    lhz     r8,28(r1)
    lhz     r10,30(r1)
    sth     r8,32(r1)
    sth     r10,34(r1)
    lwz     r0,32(r1)
    srwi    r8,r0,16
    sth     r0,24(r31)
    sth     r8,22(r31)
L0202499c:
    lwz     r0,60(r1)
    lwz     r31,52(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
