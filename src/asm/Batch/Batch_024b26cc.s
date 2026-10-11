# Converted from the disassembly of 0x024b26cc (96 bytes). Name is a placeholder.
    .text
    .globl Batch_024b26cc
Batch_024b26cc:
    li      r7,0
    addi    r12,r3,36
    mr      r11,r7
    b       L024b26e4
L024b26dc:
    cmplwi  r7,5
    bge-    L024b26f0
L024b26e4:
    add     r8,r12,r11
    mr      r10,r11
    b       L024b26f4
L024b26f0:
    mr      r8,r12
L024b26f4:
    lwz     r0,0(r8)
    cmpwi   r0,0
    bne-    L024b2714
    cmplwi  r7,5
    bge-    L024b270c
    add     r12,r12,r10
L024b270c:
    stw     r4,0(r12)
    blr
L024b2714:
    addi    r7,r7,1
    addi    r10,r10,4
    cmpwi   r7,5
    addi    r11,r11,4
    blt+    L024b26dc
    blr
