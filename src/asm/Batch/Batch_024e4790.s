# Converted from the disassembly of 0x024e4790 (192 bytes). Name is a placeholder.
    .text
    .globl Batch_024e4790
Batch_024e4790:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,3660(r12)
    lwz     r11,16(r12)
    lwz     r0,0(r11)
    addi    r12,r4,30
    cmplw   r12,r0
    lwz     r9,4(r11)
    bge-    L024e47cc
    slwi    r0,r4,2
    add     r11,r9,r0
    addi    r9,r11,120
L024e47cc:
    lis     r10,4119
    lwzu    r0,3856(r10)
    lis     r4,4119
    lwz     r31,0(r9)
    cmpwi   r0,0
    addi    r4,r4,26576
    bne-    L024e47fc
    lis     r0,4107
    li      r12,1
    addic   r0,r0,-9484
    stw     r12,0(r10)
    stw     r0,0(r4)
L024e47fc:
    cmpwi   r31,0
    beq-    L024e4838
    lwz     r11,196(r31)
    lwz     r9,12(r11)
    mtctr   r9
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    beq-    L024e4838
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024e4838:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    li      r3,0
    blr
