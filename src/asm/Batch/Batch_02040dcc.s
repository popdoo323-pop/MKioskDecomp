# Converted from the disassembly of 0x02040dcc (196 bytes). Name is a placeholder.
    .text
    .globl Batch_02040dcc
Batch_02040dcc:
    lbz     r0,136(r3)
    cmpwi   r0,0
    bne-    L02040dec
    lbz     r7,56(r3)
    cmpwi   r7,0
    beqlr-
    li      r8,1
    stb     r8,136(r3)
L02040dec:
    li      r9,16
    li      r10,0
    addi    r12,r3,104
    mtctr   r9
    mr      r11,r10
L02040e00:
    cmplwi  r10,16
    lhz     r7,92(r3)
    bge-    L02040e20
    slwi    r9,r10,1
    lhzx    r0,r12,r9
    cmplw   r0,r7
    bge-    L02040e54
    b       L02040e2c
L02040e20:
    lhz     r0,0(r12)
    cmplw   r0,r7
    bge-    L02040e54
L02040e2c:
    cmplwi  r10,16
    bge-    L02040e48
    slwi    r0,r10,1
    lhzx    r9,r12,r0
    addi    r9,r9,1
    sthx    r9,r12,r0
    b       L02040e54
L02040e48:
    lhz     r9,0(r12)
    addi    r9,r9,1
    sth     r9,0(r12)
L02040e54:
    lbz     r9,56(r3)
    cmpwi   r9,0
    beq-    L02040e84
    lha     r0,64(r3)
    cmplw   r10,r0
    bne-    L02040e84
    cmplwi  r10,16
    bge-    L02040e80
    slwi    r0,r10,1
    sthx    r11,r12,r0
    b       L02040e84
L02040e80:
    sth     r11,0(r12)
L02040e84:
    addi    r10,r10,1
    bdnz+   L02040e00
    blr
