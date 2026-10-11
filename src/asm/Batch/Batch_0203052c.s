# Converted from the disassembly of 0x0203052c (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0203052c
Batch_0203052c:
    mflr    r0
    stw     r0,4(r1)
    mr      r10,r3
    stwu    r1,-8(r1)
    bl      ext_020304e0
    not     r12,r3
    addic   r0,r12,-1
    subfe.  r11,r0,r12
    bne-    L02030558
    mr      r3,r10
    bl      ext_02030378
L02030558:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
