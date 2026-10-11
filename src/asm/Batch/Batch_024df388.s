# Converted from the disassembly of 0x024df388 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024df388
Batch_024df388:
    li      r6,0
    li      r5,4
    addi    r10,r3,1456
    mr      r12,r6
    mtctr   r5
    li      r9,1
L024df3a0:
    lbzx    r0,r10,r12
    cmpwi   r0,0
    beq-    L024df3c8
    cmplwi  r6,4
    bge-    L024df3c0
    stbx    r9,r10,r6
    addi    r6,r6,1
    b       L024df3c8
L024df3c0:
    addi    r6,r6,1
    stb     r9,0(r10)
L024df3c8:
    addi    r12,r12,1
    bdnz+   L024df3a0
    cmplwi  r6,4
    subfic  r0,r6,4
    bgelr-
    mtctr   r0
    li      r7,0
L024df3e4:
    add     r12,r10,r6
    addi    r6,r6,1
    stb     r7,0(r12)
    bdnz+   L024df3e4
    blr
