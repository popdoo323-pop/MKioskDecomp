# Converted from the disassembly of 0x02027620 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_02027620
Batch_02027620:
    mflr    r0
    stw     r0,4(r1)
    mr      r8,r3
    stwu    r1,-8(r1)
    lwz     r12,4(r8)
    li      r9,0
    cmpw    r9,r12
    bge-    L02027670
    li      r11,0
L02027644:
    cmplw   r9,r12
    li      r3,0
    bge-    L02027658
    lwz     r10,12(r8)
    lwzx    r3,r10,r11
L02027658:
    bl      ext_02027608
    lwz     r12,4(r8)
    addi    r9,r9,1
    cmpw    r9,r12
    addi    r11,r11,4
    blt+    L02027644
L02027670:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
