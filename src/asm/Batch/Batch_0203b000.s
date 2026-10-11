# Converted from the disassembly of 0x0203b000 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_0203b000
Batch_0203b000:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L0203b03c
    mr      r3,r30
    li      r4,0
    bl      ext_02411014
    clrlwi. r0,r31,31
    beq-    L0203b03c
    mr      r3,r30
    bl      ext_026014bc
L0203b03c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
