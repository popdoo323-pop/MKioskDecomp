# Converted from the disassembly of 0x024c8314 (324 bytes). Name is a placeholder.
    .text
    .globl Batch_024c8314
Batch_024c8314:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,28(r1)
    mr      r31,r3
    addi    r9,r31,300
    stw     r0,36(r1)
    lwz     r10,0(r4)
    li      r0,3
    cmplw   r10,r9
    lwz     r11,20(r4)
    bne-    L024c8344
    li      r0,2
L024c8344:
    cmplwi  r11,3
    stw     r0,8(r1)
    bge-    L024c8374
    cmplwi  r11,0
    beq-    L024c83a0
    cmplwi  r11,2
    beq-    L024c83d4
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c8374:
    cmplwi  r11,3
    beq-    L024c841c
    cmplwi  r11,5
    beq-    L024c83fc
    cmplwi  r11,7
    beq-    L024c841c
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c83a0:
    lwz     r4,24(r4)
    mr      r3,r31
    bl      ext_02485030
    lwz     r12,8(r1)
    addi    r4,r1,16
    mr      r3,r31
    stw     r12,16(r1)
    bl      ext_024c81b0
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c83d4:
    lwz     r0,8(r1)
    addi    r4,r1,20
    mr      r3,r31
    stw     r0,20(r1)
    bl      ext_024c8288
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c83fc:
    lwz     r4,24(r4)
    mr      r3,r31
    bl      ext_02485030
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c841c:
    lwz     r0,8(r1)
    addi    r4,r1,12
    mr      r3,r31
    stw     r0,12(r1)
    bl      ext_024c7f7c
    lwz     r7,8(r1)
    addi    r4,r1,12
    mr      r3,r31
    stw     r7,12(r1)
    bl      ext_024c7fcc
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
