# Converted from the disassembly of 0x024baa58 (156 bytes). Name is a placeholder.
    .text
    .globl Batch_024baa58
Batch_024baa58:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    li      r31,4
    stw     r30,16(r1)
    stw     r29,12(r1)
    mr      r30,r3
    stw     r0,28(r1)
    addi    r29,r30,1232
L024baa7c:
    mr      r3,r29
    bl      ext_024b7b8c
    addic.  r31,r31,-1
    addi    r29,r29,160
    bne+    L024baa7c
    lbz     r12,4(r30)
    rlwinm. r0,r12,31,31,31
    beq-    L024baad8
    addi    r3,r30,8
    bl      ext_024b5c78
    addi    r3,r30,1072
    bl      ext_024b7158
    addi    r3,r30,1128
    bl      ext_024b7204
    lbz     r10,2312(r30)
    cmpwi   r10,0
    beq-    L024baad0
    mr      r3,r30
    bl      ext_024ba598
    li      r11,0
    stb     r11,2312(r30)
L024baad0:
    mr      r3,r30
    bl      ext_024ba918
L024baad8:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
