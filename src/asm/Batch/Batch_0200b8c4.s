# Converted from the disassembly of 0x0200b8c4 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b8c4
Batch_0200b8c4:
    li      r8,0
    mr      r3,r5
    stw     r8,0(r3)
    lwz     r0,0(r4)
    lwz     r10,8(r4)
    slwi    r9,r0,2
    add     r7,r10,r9
    cmplw   r10,r7
    beq-    L0200b92c
L0200b8e8:
    lwz     r9,4(r3)
    cmpw    r8,r9
    lwz     r12,0(r10)
    bge-    L0200b920
    lwz     r0,8(r3)
    slwi    r11,r8,2
    stwx    r12,r11,r0
    lwz     r6,0(r3)
    addi    r8,r6,1
    stw     r8,0(r3)
    lwz     r0,0(r4)
    lwz     r11,8(r4)
    slwi    r9,r0,2
    add     r7,r11,r9
L0200b920:
    addi    r10,r10,4
    cmplw   r10,r7
    bne+    L0200b8e8
L0200b92c:
    lis     r4,513
    addi    r4,r4,-18552
    b       ext_02601dc0
