# Converted from the disassembly of 0x024ea820 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_024ea820
Batch_024ea820:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r11,120(r31)
    cmpwi   r11,0
    beq-    L024ea850
    lwz     r0,4(r11)
    cmpwi   r0,36
    bne-    L024ea854
    b       L024ea86c
L024ea850:
    li      r0,-1
L024ea854:
    cmpwi   r0,37
    beq-    L024ea86c
    cmpwi   r0,54
    beq-    L024ea86c
    cmpwi   r0,55
    bne-    L024ea88c
L024ea86c:
    lis     r12,4107
    lfs     f1,-9236(r12)
    lwz     r12,536(r31)
    lwz     r10,200(r12)
    lwz     r11,32(r10)
    lwz     r3,0(r11)
    li      r4,0
    bl      ext_0247f854
L024ea88c:
    lbz     r0,664(r31)
    cmpwi   r0,0
    beq-    L024ea8a4
    bl      ext_024ae91c
    li      r4,1
    bl      ext_024bd464
L024ea8a4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
