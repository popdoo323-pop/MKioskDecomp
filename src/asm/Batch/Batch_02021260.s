# Converted from the disassembly of 0x02021260 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_02021260
Batch_02021260:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    li      r31,0
    mr.     r3,r4
    stw     r0,20(r1)
    beq-    L0202128c
    bl      ext_02031bc4
    cmpwi   r3,0
    beq-    L0202128c
    li      r31,1
L0202128c:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
