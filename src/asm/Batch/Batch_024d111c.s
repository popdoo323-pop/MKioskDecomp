# Converted from the disassembly of 0x024d111c (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024d111c
Batch_024d111c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r0,500(r3)
    cmpwi   r0,2
    bne-    L024d1154
    bl      ext_024d0c04
    lwz     r11,500(r3)
    li      r12,0
    stw     r12,528(r3)
    cntlzw  r12,r11
    lwz     r0,528(r3)
    srwi    r3,r12,5
    b       L024d1178
L024d1154:
    cmpwi   r0,1
    bne-    L024d1160
    bl      ext_024d0cc8
L024d1160:
    lwz     r11,500(r3)
    li      r12,0
    stw     r12,528(r3)
    cntlzw  r12,r11
    lwz     r0,528(r3)
    srwi    r3,r12,5
L024d1178:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
