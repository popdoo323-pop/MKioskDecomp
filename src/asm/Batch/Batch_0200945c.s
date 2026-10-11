# Converted from the disassembly of 0x0200945c (96 bytes). Name is a placeholder.
    .text
    .globl Batch_0200945c
Batch_0200945c:
    li      r7,0
    addi    r12,r3,116
    mr      r11,r7
    b       L02009474
L0200946c:
    cmplwi  r7,12
    bge-    L02009480
L02009474:
    add     r8,r12,r11
    mr      r10,r11
    b       L02009484
L02009480:
    mr      r8,r12
L02009484:
    lwz     r0,0(r8)
    cmpwi   r0,0
    bne-    L020094a4
    cmplwi  r7,12
    bge-    L0200949c
    add     r12,r12,r10
L0200949c:
    stw     r4,0(r12)
    blr
L020094a4:
    addi    r7,r7,1
    addi    r10,r10,4
    cmpwi   r7,12
    addi    r11,r11,4
    blt+    L0200946c
    blr
