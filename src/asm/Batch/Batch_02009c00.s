# Converted from the disassembly of 0x02009c00 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_02009c00
Batch_02009c00:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r29,20(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    lwz     r11,0(r3)
    lwz     r12,156(r11)
    mtctr   r12
    mr      r29,r3
    bctrl
    lwz     r30,40(r29)
    stw     r30,8(r1)
    lwz     r0,36(r29)
    slwi    r0,r0,2
    add     r31,r30,r0
    cmplw   r30,r31
    beq-    L02009c5c
L02009c48:
    lwz     r3,0(r30)
    bl      ext_02411064
    addi    r30,r30,4
    cmplw   r30,r31
    bne+    L02009c48
L02009c5c:
    lwz     r9,0(r29)
    lwz     r10,164(r9)
    mtctr   r10
    mr      r3,r29
    bctrl
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
