# Converted from the disassembly of 0x02041078 (260 bytes). Name is a placeholder.
    .text
    .globl Batch_02041078
Batch_02041078:
    lwz     r8,4(r3)
    cmpwi   r8,0
    beq-    L02041174
    lis     r12,4117
    lwz     r12,-28988(r12)
    lbz     r0,89(r12)
    cmpwi   r0,0
    bne-    L02041174
    cmpwi   r5,0
    bne-    L020410a8
    li      r5,0
    b       ext_02040fac
L020410a8:
    lbz     r0,136(r3)
    cmpwi   r0,0
    beq-    L02041174
    lis     r11,4117
    lwz     r11,-5364(r11)
    lwz     r10,64(r11)
    lwz     r12,20(r10)
    cmpwi   r12,0
    beq-    L02041110
    lwz     r12,56(r10)
    cmpwi   r12,0
    beq-    L02041110
    cmpwi   r4,0
    blt-    L02041110
    lhz     r0,116(r10)
    cmpw    r4,r0
    bge-    L02041110
    slwi    r0,r4,2
    li      r4,0
    li      r8,16
    add     r9,r12,r0
    li      r0,1
    mtctr   r8
    lhz     r7,0(r9)
    mr      r9,r4
    b       L02041128
L02041110:
    li      r8,16
    lhz     r7,368(r10)
    li      r4,0
    mtctr   r8
    li      r0,1
    mr      r9,r4
L02041128:
    slw     r8,r0,r4
    clrlwi  r10,r8,16
    and.    r11,r7,r10
    beq-    L02041168
    cmplwi  r4,16
    addi    r10,r3,104
    bge-    L02041148
    add     r10,r10,r9
L02041148:
    lhz     r12,0(r10)
    cmplw   r12,r5
    bne-    L02041168
    cmpwi   r6,0
    beq-    L02041160
    sth     r4,0(r6)
L02041160:
    li      r3,1
    blr
L02041168:
    addi    r9,r9,2
    addi    r4,r4,1
    bdnz+   L02041128
L02041174:
    li      r3,0
    blr
