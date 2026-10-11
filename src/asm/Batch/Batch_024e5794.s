# Converted from the disassembly of 0x024e5794 (264 bytes). Name is a placeholder.
    .text
    .globl Batch_024e5794
Batch_024e5794:
    cmplwi  r4,4
    addi    r11,r3,704
    bge-    L024e57a8
    slwi    r0,r4,5
    add     r11,r11,r0
L024e57a8:
    cmpwi   r5,-1
    lwz     r12,12(r11)
    li      r8,0
    bne-    L024e5804
    cmpwi   r12,0
    bgtlr-
    lwz     r0,4(r11)
    cmpw    r12,r0
    bgelr-
    lwz     r10,8(r11)
    lwz     r6,4(r11)
    add     r0,r10,r12
    addi    r7,r12,1
    cmpw    r0,r6
    stw     r7,12(r11)
    blt-    L024e57ec
    subf    r0,r6,r0
L024e57ec:
    lwz     r11,0(r11)
    slwi    r7,r0,3
    stwx    r5,r11,r7
    add     r9,r11,r7
    stb     r8,4(r9)
    blr
L024e5804:
    cmpwi   r12,1
    bgt-    L024e5850
    lwz     r0,4(r11)
    cmpw    r12,r0
    bgelr-
    lwz     r10,8(r11)
    lwz     r6,4(r11)
    add     r0,r10,r12
    addi    r9,r12,1
    cmpw    r0,r6
    stw     r9,12(r11)
    blt-    L024e5838
    subf    r0,r6,r0
L024e5838:
    lwz     r11,0(r11)
    slwi    r7,r0,3
    stwx    r5,r11,r7
    add     r9,r11,r7
    stb     r8,4(r9)
    blr
L024e5850:
    lwz     r7,4(r11)
    addi    r12,r12,-1
    stw     r12,12(r11)
    cmpw    r12,r7
    bgelr-
    lwz     r10,8(r11)
    lwz     r6,4(r11)
    add     r0,r10,r12
    addi    r9,r12,1
    cmpw    r0,r6
    stw     r9,12(r11)
    blt-    L024e5884
    subf    r0,r6,r0
L024e5884:
    lwz     r11,0(r11)
    slwi    r7,r0,3
    stwx    r5,r11,r7
    add     r9,r11,r7
    stb     r8,4(r9)
    blr
