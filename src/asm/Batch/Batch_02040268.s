# Converted from the disassembly of 0x02040268 (420 bytes). Name is a placeholder.
    .text
    .globl Batch_02040268
Batch_02040268:
    li      r11,16
    li      r12,0
    mtctr   r11
    addi    r9,r3,104
L02040278:
    cmplwi  r12,16
    bge-    L0204029c
    slwi    r11,r12,1
    add     r10,r9,r11
    lhz     r11,92(r3)
    addi    r12,r12,1
    sth     r11,0(r10)
    bdnz+   L02040278
    b       L020402ac
L0204029c:
    lhz     r11,92(r3)
    addi    r12,r12,1
    sth     r11,0(r9)
    bdnz+   L02040278
L020402ac:
    cmplwi  r4,16
    bgelr-
    cmplwi  r4,12
    ble-    L020403a0
    addi    r12,r4,1
    subfic  r11,r4,15
    clrlwi  r12,r12,24
    clrlwi  r11,r11,24
    cmplwi  r12,16
    addi    r12,r11,1
    mr      r10,r4
    blt-    L020402e0
    li      r12,1
L020402e0:
    subfic  r11,r4,16
    mtctr   r12
    clrlwi  r8,r11,24
L020402ec:
    mr      r12,r10
    cmplwi  r12,16
    bge-    L0204031c
    slwi    r12,r12,1
    add     r11,r9,r12
    lwz     r12,20(r3)
    addi    r10,r10,1
    mullw   r12,r12,r8
    clrlwi  r10,r10,24
    sth     r12,0(r11)
    bdnz+   L020402ec
    b       L02040334
L0204031c:
    lwz     r12,20(r3)
    addi    r10,r10,1
    mullw   r12,r12,r8
    clrlwi  r10,r10,24
    sth     r12,0(r9)
    bdnz+   L020402ec
L02040334:
    addi    r12,r4,-12
    clrlwi. r12,r12,24
    li      r7,0
    mr      r11,r12
    beqlr-
    mtctr   r11
L0204034c:
    mr      r11,r7
    cmplwi  r11,16
    bge-    L02040380
    slwi    r11,r11,1
    add     r8,r9,r11
    lwz     r11,20(r3)
    addi    r7,r7,1
    mullw   r11,r11,r12
    addi    r12,r12,-1
    clrlwi  r7,r7,24
    sth     r11,0(r8)
    bdnz+   L0204034c
    blr
L02040380:
    lwz     r11,20(r3)
    addi    r7,r7,1
    mullw   r11,r11,r12
    clrlwi  r7,r7,24
    addi    r12,r12,-1
    sth     r11,0(r9)
    bdnz+   L0204034c
    blr
L020403a0:
    addi    r12,r4,4
    cmpw    r4,r12
    bgelr-
    addi    r8,r4,4
L020403b0:
    mr      r12,r4
    cmplwi  r12,16
    bge-    L020403e8
    slwi    r12,r12,1
    subf    r11,r4,r8
    add     r10,r9,r12
    lwz     r12,20(r3)
    addi    r4,r4,1
    mullw   r12,r12,r11
    clrlwi  r4,r4,24
    cmpw    r4,r8
    sth     r12,0(r10)
    blt+    L020403b0
    blr
L020403e8:
    lwz     r12,20(r3)
    subf    r11,r4,r8
    addi    r4,r4,1
    mullw   r12,r12,r11
    clrlwi  r4,r4,24
    cmpw    r4,r8
    sth     r12,0(r9)
    blt+    L020403b0
    blr
