# Converted from the disassembly of 0x024bc520 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc520
Batch_024bc520:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,28(r1)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r10,224(r31)
    cmpwi   r10,0
    beq-    L024bc5b4
    li      r9,0
    li      r12,-1
    stw     r9,24(r1)
    mr      r5,r4
    stw     r9,12(r1)
    addi    r3,r10,36
    stw     r9,8(r1)
    addi    r4,r1,8
    stw     r12,20(r1)
    stw     r9,16(r1)
    bl      ext_0205e498
    lwz     r11,8(r1)
    cmpwi   r11,0
    beq-    L024bc5b4
    lwz     r10,224(r31)
    lwz     r12,40(r10)
    lha     r0,16(r11)
    lwz     r10,12(r12)
    lwz     r11,12(r10)
    mulli   r0,r0,92
    lwz     r9,16(r11)
    add.    r12,r9,r0
    beq-    L024bc5b4
    lwz     r0,36(r1)
    lwz     r3,28(r12)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
L024bc5b4:
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    li      r3,-1
    blr
