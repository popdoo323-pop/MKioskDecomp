# Converted from the disassembly of 0x02000be4 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_02000be4
Batch_02000be4:
    lwz     r12,164(r3)
    cmpwi   r12,0
    lwz     r11,168(r3)
    blt-    L02000bfc
    addi    r0,r12,1
    stw     r0,164(r3)
L02000bfc:
    cmpwi   r11,0
    blt-    L02000c0c
    addi    r11,r11,1
    stw     r11,168(r3)
L02000c0c:
    lwz     r11,344(r3)
    cmpwi   r11,0
    lbz     r0,37(r3)
    blt-    L02000c24
    addi    r12,r11,1
    stw     r12,344(r3)
L02000c24:
    cmpwi   r0,6
    beq-    L02000c40
    lbz     r12,37(r3)
    li      r11,-1
    stw     r11,164(r3)
    cmpwi   r12,7
    beqlr-
L02000c40:
    lis     r12,4120
    lwz     r12,-15700(r12)
    lwz     r11,168(r3)
    addi    r0,r12,300
    cmpw    r11,r0
    blelr-
    li      r0,-1
    stw     r0,168(r3)
    blr
