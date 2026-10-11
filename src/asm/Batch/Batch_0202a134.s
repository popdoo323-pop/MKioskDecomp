# Converted from the disassembly of 0x0202a134 (164 bytes). Name is a placeholder.
    .text
    .globl Batch_0202a134
Batch_0202a134:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r3,84(r31)
    bl      ext_02185be4
    cmpwi   r3,0
    bne-    L0202a16c
    lbz     r9,101(r31)
    cmpwi   r9,0
    beq-    L0202a198
L0202a16c:
    lwz     r8,60(r31)
    lwz     r11,280(r30)
    lwz     r9,88(r8)
    slwi    r10,r11,3
    lwz     r12,92(r9)
    add     r11,r30,r10
    stw     r12,84(r11)
    lwz     r7,280(r30)
    addi    r7,r7,1
    stw     r7,280(r30)
    b       L0202a1c0
L0202a198:
    lwz     r12,60(r31)
    lwz     r0,284(r30)
    lwz     r6,88(r12)
    slwi    r0,r0,3
    lwz     r6,92(r6)
    add     r7,r30,r0
    stw     r6,180(r7)
    lwz     r7,284(r30)
    addi    r7,r7,1
    stw     r7,284(r30)
L0202a1c0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
