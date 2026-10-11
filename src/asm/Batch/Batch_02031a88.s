# Converted from the disassembly of 0x02031a88 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_02031a88
Batch_02031a88:
    lbz     r9,132(r3)
    lwz     r8,68(r3)
    cmpwi   r9,0
    li      r3,0
    lwz     r12,60(r8)
    beqlr-
    lwz     r8,56(r12)
    lwz     r9,828(r8)
    xori    r11,r9,1
    cntlzw  r0,r11
    srwi.   r10,r0,5
    li      r3,0
    bne-    L02031ad0
    lwz     r10,828(r8)
    xori    r9,r10,2
    cntlzw  r10,r9
    srwi.   r8,r10,5
    beq-    L02031ae4
L02031ad0:
    lwz     r8,52(r12)
    lwz     r0,804(r8)
    cmpwi   r0,12
    beq-    L02031b28
    b       L02031b24
L02031ae4:
    lwz     r10,52(r12)
    lwz     r11,828(r10)
    xori    r0,r11,1
    cntlzw  r11,r0
    srwi.   r11,r11,5
    addi    r8,r12,52
    bne-    L02031b14
    lwz     r0,828(r10)
    xori    r10,r0,2
    cntlzw  r11,r10
    srwi.   r0,r11,5
    beq-    L02031b28
L02031b14:
    lwz     r8,0(r8)
    lwz     r0,804(r8)
    cmpwi   r0,12
    beq-    L02031b28
L02031b24:
    li      r3,1
L02031b28:
    clrlwi  r3,r3,24
    blr
