# Converted from the disassembly of 0x02026bf0 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_02026bf0
Batch_02026bf0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    cmpwi   r3,0
    stw     r0,20(r1)
    bne-    L02026c1c
    li      r3,24
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02026c40
L02026c1c:
    lis     r0,4096
    stw     r31,8(r3)
    li      r12,0
    addic   r0,r0,10908
    stw     r12,16(r3)
    stw     r0,4(r3)
    stw     r12,12(r3)
    stw     r12,0(r3)
    stw     r12,20(r3)
L02026c40:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
