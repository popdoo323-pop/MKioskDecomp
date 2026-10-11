# Converted from the disassembly of 0x021332a4 (112 bytes). Name is a placeholder.
    .text
    .globl ItemCoin_Gap_021332a4
ItemCoin_Gap_021332a4:
    li      r0,5
    li      r11,253
    stw     r0,0(r3)
    li      r12,0
    stw     r11,4(r3)
    li      r11,-1
    stb     r12,9(r3)
    stb     r11,13(r3)
    stb     r12,24(r3)
    stb     r11,14(r3)
    stb     r12,8(r3)
    stb     r11,12(r3)
    blr
    lwz     r12,4(r3)
    cmpwi   r12,253
    li      r10,0
    beq-    L0213330c
    lbz     r11,12(r3)
    extsb   r11,r11
    cmpwi   r11,-1
    beq-    L0213330c
    lbz     r0,13(r3)
    extsb   r0,r0
    cmpwi   r0,-1
    beq-    L0213330c
    li      r10,1
L0213330c:
    clrlwi  r3,r10,24
    blr
