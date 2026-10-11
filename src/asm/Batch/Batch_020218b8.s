# Converted from the disassembly of 0x020218b8 (240 bytes). Name is a placeholder.
    .text
    .globl Batch_020218b8
Batch_020218b8:
    li      r5,0
    lhz     r12,8(r3)
    mr      r6,r5
    cmpw    r6,r12
    bgelr-
L020218cc:
    clrlwi  r12,r6,16
    mulli   r11,r12,76
    lwz     r12,16(r3)
    add     r7,r12,r11
    stw     r6,4(r7)
    lhz     r11,20(r3)
    lhz     r12,8(r7)
    add     r11,r11,r12
    sth     r11,20(r3)
    lhz     r12,8(r7)
    li      r8,0
    cmpw    r8,r12
    bge-    L02021994
L02021900:
    lwz     r11,12(r7)
    clrlwi  r12,r8,16
    cmplw   r12,r11
    li      r11,0
    bge-    L02021920
    lwz     r11,20(r7)
    slwi    r12,r12,2
    lwzx    r11,r12,r11
L02021920:
    stw     r5,0(r11)
    lbz     r10,48(r3)
    stb     r10,816(r11)
    lbz     r12,48(r3)
    cmpwi   r12,0
    addi    r5,r5,1
    beq-    L02021984
    lhz     r10,8(r7)
    addi    r12,r10,-1
    cmplw   r8,r12
    bne-    L02021988
    lwz     r12,12(r7)
    cmpwi   r12,0
    li      r12,0
    beq-    L02021964
    lwz     r9,20(r7)
    lwz     r12,0(r9)
L02021964:
    lha     r9,814(r12)
    cmpwi   r9,0
    beq-    L02021978
    cmpwi   r9,9
    bne-    L02021988
L02021978:
    lha     r10,814(r11)
    sth     r10,814(r12)
    sth     r9,814(r11)
L02021984:
    lhz     r10,8(r7)
L02021988:
    addi    r8,r8,1
    cmpw    r8,r10
    blt+    L02021900
L02021994:
    lhz     r12,8(r3)
    addi    r6,r6,1
    cmpw    r6,r12
    blt+    L020218cc
    blr
