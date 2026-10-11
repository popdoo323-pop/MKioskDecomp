# Converted from the disassembly of 0x020172c4 (220 bytes). Name is a placeholder.
    .text
    .globl Batch_020172c4
Batch_020172c4:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02015c0c
    lwz     r11,104(r3)
    lwz     r0,80(r11)
    cmpwi   r0,1
    bne-    L02017304
    li      r11,7
    li      r12,1
    stb     r11,64(r3)
    stb     r12,39(r3)
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L02017304:
    cmpwi   r0,2
    bne-    L0201732c
    bl      ext_0201692c
    li      r0,1
    stb     r0,39(r3)
    stb     r0,64(r3)
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L0201732c:
    lwz     r12,112(r3)
    cmplwi  r12,1
    blt-    L02017374
    beq-    L02017388
    cmplwi  r12,3
    blt-    L0201735c
    beq-    L02017388
    li      r10,0
    li      r0,1
    stb     r10,64(r3)
    stb     r0,39(r3)
    b       L02017384
L0201735c:
    lwz     r0,68(r11)
    cmpwi   r0,-1
    beq-    L02017388
    bl      ext_0201692c
    lwz     r12,112(r3)
    b       L02017388
L02017374:
    li      r10,0
    li      r0,1
    stb     r10,64(r3)
    stb     r0,39(r3)
L02017384:
    lwz     r12,112(r3)
L02017388:
    addi    r10,r12,-1
    stw     r10,112(r3)
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
