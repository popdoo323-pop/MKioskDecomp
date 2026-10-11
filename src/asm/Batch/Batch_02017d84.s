# Converted from the disassembly of 0x02017d84 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_02017d84
Batch_02017d84:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    li      r11,0
    stw     r0,20(r1)
    lwz     r12,0(r3)
    stw     r11,124(r3)
    lwz     r0,372(r12)
    mtctr   r0
    mr      r31,r3
    bctrl
    lwz     r12,0(r31)
    lwz     r0,380(r12)
    mtctr   r0
    mr      r3,r31
    bctrl
    lwz     r11,160(r31)
    cmpwi   r11,0
    bgt-    L02017e04
    lwz     r12,0(r31)
    lwz     r0,364(r12)
    mtctr   r0
    mr      r3,r31
    bctrl
    stw     r3,124(r31)
    li      r0,1
    stb     r0,116(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L02017e04:
    lwz     r11,72(r31)
    lwz     r3,84(r11)
    bl      ext_0218608c
    cmpwi   r3,0
    bne-    L02017e24
    lwz     r12,160(r31)
    addi    r12,r12,-1
    stw     r12,160(r31)
L02017e24:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
