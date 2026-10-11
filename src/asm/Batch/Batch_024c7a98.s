# Converted from the disassembly of 0x024c7a98 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_024c7a98
Batch_024c7a98:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,184(r31)
    mr      r3,r4
    cmplw   r12,r3
    beq-    L024c7afc
    stw     r3,184(r31)
    lwz     r10,4(r3)
    lwz     r0,36(r10)
    mtctr   r0
    bctrl
    mr      r4,r3
    lwz     r3,172(r31)
    bl      ext_02480bb0
    lwz     r3,184(r31)
    lwz     r12,4(r3)
    lwz     r0,52(r12)
    mtctr   r0
    bctrl
    mr      r4,r3
    lwz     r3,176(r31)
    bl      ext_02480bb0
L024c7afc:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
