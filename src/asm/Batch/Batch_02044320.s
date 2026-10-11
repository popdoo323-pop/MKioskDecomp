# Converted from the disassembly of 0x02044320 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_02044320
Batch_02044320:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r30,r5
    mr.     r31,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bne-    L02044358
    li      r3,20
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0204438c
L02044358:
    mr      r3,r31
    bl      ext_02044064
    stw     r30,12(r31)
    li      r0,-1
    lis     r11,4096
    stw     r29,0(r31)
    addi    r11,r11,22548
    stw     r0,8(r31)
    cmpwi   r30,0
    stw     r11,16(r31)
    beq-    L0204438c
    li      r0,-1
    stw     r0,0(r30)
L0204438c:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
