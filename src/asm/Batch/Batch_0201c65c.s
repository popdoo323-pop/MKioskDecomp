# Converted from the disassembly of 0x0201c65c (80 bytes). Name is a placeholder.
    .text
    .globl Batch_0201c65c
Batch_0201c65c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    cmpwi   r3,0
    stw     r0,20(r1)
    bne-    L0201c688
    li      r3,8
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0201c698
L0201c688:
    lis     r0,4096
    stw     r31,0(r3)
    addic   r0,r0,6292
    stw     r0,4(r3)
L0201c698:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
