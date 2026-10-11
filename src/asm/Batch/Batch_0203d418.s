# Converted from the disassembly of 0x0203d418 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_0203d418
Batch_0203d418:
    cmplwi  r5,4
    addi    r12,r3,92
    lwz     r0,0(r4)
    bge-    L0203d430
    mulli   r10,r5,12
    add     r12,r12,r10
L0203d430:
    stw     r0,0(r12)
    blr
