# Converted from the disassembly of 0x02044064 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_02044064
Batch_02044064:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L02044088
    li      r3,8
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02044098
L02044088:
    li      r0,-1
    li      r12,0
    stw     r0,0(r3)
    stb     r12,4(r3)
L02044098:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
