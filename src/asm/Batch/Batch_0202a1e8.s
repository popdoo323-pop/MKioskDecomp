# Converted from the disassembly of 0x0202a1e8 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_0202a1e8
Batch_0202a1e8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02398bf8
    cmpwi   r3,0
    beq-    L0202a214
    li      r12,1
    stb     r12,39(r31)
    stb     r12,64(r31)
L0202a214:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
