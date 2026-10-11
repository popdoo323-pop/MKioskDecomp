# Converted from the disassembly of 0x0202b1c8 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_0202b1c8
Batch_0202b1c8:
    cmpwi   r4,0
    lbz     r0,361(r3)
    beq-    L0202b234
    cmpwi   r0,0
    bnelr-
    lwz     r9,12(r3)
    li      r7,1
    stb     r7,361(r3)
    lwz     r8,56(r9)
    rlwinm  r8,r8,0,10,8
    stw     r8,56(r9)
    lwz     r9,16(r3)
    li      r8,0
    cmpw    r8,r9
    bgelr-
    li      r9,0
L0202b208:
    lwz     r10,24(r3)
    lwzx    r12,r10,r9
    lwz     r11,56(r12)
    rlwinm  r11,r11,0,10,8
    stw     r11,56(r12)
    lwz     r12,16(r3)
    addi    r8,r8,1
    cmpw    r8,r12
    addi    r9,r9,4
    blt+    L0202b208
    blr
L0202b234:
    cmpwi   r0,0
    beqlr-
    lwz     r11,12(r3)
    li      r7,0
    stb     r7,361(r3)
    lwz     r8,56(r11)
    oris    r8,r8,64
    stw     r8,56(r11)
    lwz     r0,16(r3)
    cmpw    r7,r0
    bgelr-
    li      r6,0
L0202b264:
    lwz     r12,24(r3)
    lwzx    r8,r12,r6
    lwz     r11,56(r8)
    oris    r11,r11,64
    stw     r11,56(r8)
    lwz     r0,16(r3)
    addi    r7,r7,1
    cmpw    r7,r0
    addi    r6,r6,4
    blt+    L0202b264
    blr
