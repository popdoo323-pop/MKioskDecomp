# Converted from the disassembly of 0x0203fd40 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_0203fd40
Batch_0203fd40:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L0203fd64
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0203fd74
L0203fd64:
    li      r0,-1
    stw     r0,0(r3)
    stw     r0,8(r3)
    stw     r0,4(r3)
L0203fd74:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
