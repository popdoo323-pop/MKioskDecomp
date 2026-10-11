# Converted from the disassembly of 0x02021828 (144 bytes). Name is a placeholder.
    .text
    .globl Batch_02021828
Batch_02021828:
    lhz     r6,8(r3)
    li      r7,0
    cmpw    r7,r6
    bgelr-
    lwz     r11,16(r3)
L0202183c:
    clrlwi  r10,r7,16
    mulli   r12,r10,76
    add     r9,r11,r12
    lhz     r10,8(r9)
    li      r8,0
    cmpw    r8,r10
    bge-    L020218a8
L02021858:
    clrlwi  r10,r7,16
    mulli   r9,r10,76
    add     r10,r11,r9
    lwz     r9,12(r10)
    clrlwi  r11,r8,16
    cmplw   r11,r9
    li      r9,0
    bge-    L02021884
    lwz     r10,20(r10)
    slwi    r11,r11,2
    lwzx    r9,r11,r10
L02021884:
    sth     r8,134(r9)
    sth     r7,132(r9)
    lwz     r11,16(r3)
    add     r9,r11,r12
    lhz     r10,8(r9)
    addi    r8,r8,1
    cmpw    r8,r10
    blt+    L02021858
    lhz     r6,8(r3)
L020218a8:
    addi    r7,r7,1
    cmpw    r7,r6
    blt+    L0202183c
    blr
