# Converted from the disassembly of 0x0200b214 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b214
Batch_0200b214:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r0,0(r4)
    cmpwi   r0,253
    beq-    L0200b238
    bl      ext_0200abdc
    cmpwi   r3,0
    bne-    L0200b24c
L0200b238:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,0
    blr
L0200b24c:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,1
    blr
