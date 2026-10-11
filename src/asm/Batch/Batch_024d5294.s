# Converted from the disassembly of 0x024d5294 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_024d5294
Batch_024d5294:
    lwz     r0,56(r3)
    cmpwi   r4,0
    lwz     r11,124(r3)
    beq-    L024d52c0
    oris    r0,r0,32768
    stw     r0,56(r3)
    lwz     r8,0(r11)
    cmpwi   r8,0
    li      r7,0
    bgt-    L024d52d8
    blr
L024d52c0:
    clrlwi  r0,r0,1
    stw     r0,56(r3)
    lwz     r8,0(r11)
    li      r7,0
    cmpwi   r8,0
    blelr-
L024d52d8:
    li      r12,0
L024d52dc:
    lwz     r0,0(r11)
    cmplw   r7,r0
    li      r10,0
    bge-    L024d52f4
    lwz     r11,8(r11)
    lwzx    r10,r11,r12
L024d52f4:
    cmpwi   r4,0
    lwz     r6,56(r10)
    beq-    L024d531c
    oris    r6,r6,32768
    addic.  r8,r8,-1
    addi    r7,r7,1
    stw     r6,56(r10)
    addi    r12,r12,4
    beqlr-
    b       L024d5334
L024d531c:
    clrlwi  r6,r6,1
    addic.  r8,r8,-1
    addi    r7,r7,1
    stw     r6,56(r10)
    addi    r12,r12,4
    beqlr-
L024d5334:
    lwz     r11,124(r3)
    b       L024d52dc
