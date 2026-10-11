# Converted from the disassembly of 0x020071d4 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_020071d4
Batch_020071d4:
    lwz     r9,76(r3)
    lbz     r10,37(r9)
    cmpwi   r10,1
    li      r11,0
    bne-    L02007210
    lbz     r12,64(r9)
    cmpwi   r12,1
    bne-    L02007210
    lbz     r0,39(r9)
    cmpwi   r0,0
    bne-    L02007210
    lwz     r0,104(r9)
    cmpwi   r0,1
    bne-    L02007210
    li      r11,1
L02007210:
    clrlwi  r3,r11,24
    blr
