# Converted from the disassembly of 0x0203cdd8 (232 bytes). Name is a placeholder.
    .text
    .globl Batch_0203cdd8
Batch_0203cdd8:
    mflr    r0
    stwu    r1,-504(r1)
    addi    r8,r1,4
    stw     r31,500(r1)
    li      r9,61
    mtctr   r9
    mr      r31,r3
    addi    r12,r4,-4
    stw     r0,508(r1)
L0203cdfc:
    lwzu    r10,4(r12)
    stwu    r10,4(r8)
    bdnz+   L0203cdfc
    lwz     r0,16(r31)
    lwz     r8,28(r31)
    cmpw    r0,r8
    bge-    L0203ceac
    lwz     r12,20(r31)
    cmpwi   r12,0
    beq-    L0203ce2c
    lwz     r0,0(r12)
    stw     r0,20(r31)
L0203ce2c:
    cmpwi   r12,0
    beq-    L0203ce94
    li      r8,61
    addi    r10,r1,4
    mtctr   r8
    addi    r11,r1,248
L0203ce44:
    lwzu    r9,4(r10)
    stwu    r9,4(r11)
    bdnz+   L0203ce44
    li      r0,61
    addi    r10,r1,248
    mtctr   r0
    addi    r11,r12,-4
L0203ce60:
    lwzu    r8,4(r10)
    stwu    r8,4(r11)
    bdnz+   L0203ce60
    li      r10,0
    addi    r3,r31,8
    stw     r10,248(r12)
    addi    r4,r12,244
    stw     r10,244(r12)
    bl      ext_026017c4
    lwz     r9,16(r31)
    addi    r9,r9,1
    stw     r9,16(r31)
    b       L0203ceac
L0203ce94:
    addi    r3,r31,8
    li      r4,244
    bl      ext_026017c4
    lwz     r9,16(r31)
    addi    r9,r9,1
    stw     r9,16(r31)
L0203ceac:
    lwz     r0,508(r1)
    lwz     r31,500(r1)
    mtlr    r0
    addi    r1,r1,504
    blr
