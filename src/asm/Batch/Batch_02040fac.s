# Converted from the disassembly of 0x02040fac (204 bytes). Name is a placeholder.
    .text
    .globl Batch_02040fac
Batch_02040fac:
    lwz     r9,4(r3)
    cmpwi   r9,0
    beq-    L02041040
    lbz     r11,56(r3)
    cmpwi   r11,0
    beq-    L02041040
    cmpwi   r4,8
    bne-    L02040fe4
    lwz     r12,96(r3)
    lwz     r0,100(r3)
    cmplw   r12,r0
    li      r4,9
    blt-    L02040fe4
    li      r4,5
L02040fe4:
    cmpwi   r5,0
    beq-    L02040ff4
    lha     r7,64(r3)
    sth     r7,0(r5)
L02040ff4:
    lis     r12,4117
    lwz     r12,-5364(r12)
    lwz     r7,64(r12)
    lwz     r8,20(r7)
    cmpwi   r8,0
    beq-    L02041048
    lwz     r12,56(r7)
    cmpwi   r12,0
    beq-    L02041048
    cmpwi   r4,0
    blt-    L02041048
    lhz     r9,116(r7)
    cmpw    r4,r9
    bge-    L02041048
    lha     r8,64(r3)
    slwi    r10,r4,2
    cmplwi  r8,16
    add     r10,r12,r10
    blt-    L02041058
L02041040:
    li      r3,0
    blr
L02041048:
    lha     r8,64(r3)
    cmplwi  r8,16
    addi    r10,r7,368
    bge+    L02041040
L02041058:
    li      r9,1
    slw     r0,r9,r8
    lhz     r12,0(r10)
    clrlwi  r0,r0,16
    and     r0,r12,r0
    addic   r10,r0,-1
    subfe   r3,r10,r0
    blr
