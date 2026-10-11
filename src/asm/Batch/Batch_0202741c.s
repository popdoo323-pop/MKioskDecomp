# Converted from the disassembly of 0x0202741c (76 bytes). Name is a placeholder.
    .text
    .globl Batch_0202741c
Batch_0202741c:
    lwz     r11,4(r3)
    li      r7,0
    cmpw    r7,r11
    bgelr-
    li      r12,0
L02027430:
    cmplw   r7,r11
    lwz     r11,56(r3)
    li      r10,0
    bge-    L02027448
    lwz     r9,12(r3)
    lwzx    r10,r9,r12
L02027448:
    add     r0,r11,r7
    stw     r0,28(r10)
    lwz     r11,4(r3)
    addi    r7,r7,1
    cmpw    r7,r11
    addi    r12,r12,4
    blt+    L02027430
    blr
