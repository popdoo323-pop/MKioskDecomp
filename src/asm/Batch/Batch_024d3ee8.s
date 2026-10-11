# Converted from the disassembly of 0x024d3ee8 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_024d3ee8
Batch_024d3ee8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r11,32(r31)
    lwz     r30,0(r11)
    lwz     r0,4(r30)
    cmpwi   r0,0
    bne-    L024d3f5c
    mr      r3,r30
    bl      ext_0247fc44
    lis     r12,4107
    lfs     f0,-17468(r12)
    fcmpu   cr0,f1,f0
    blt-    L024d3f5c
    lwz     r4,4(r30)
    mr      r3,r30
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024d3f5c
    mr      r3,r31
    bl      ext_024800e0
    lis     r10,4107
    mr      r3,r30
    lfs     f1,-17464(r10)
    li      r4,2
    bl      ext_0247f854
L024d3f5c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
