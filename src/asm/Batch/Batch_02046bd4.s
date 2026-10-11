# Converted from the disassembly of 0x02046bd4 (240 bytes). Name is a placeholder.
    .text
    .globl Batch_02046bd4
Batch_02046bd4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r28,8(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    lis     r12,4117
    stw     r0,28(r1)
    lwz     r12,-28988(r12)
    mr      r29,r4
    lwz     r0,108(r12)
    mr      r28,r3
    mr      r31,r6
    cmpwi   r0,8
    mr      r30,r5
    bne-    L02046c50
    bl      ext_02041f68
    bl      ext_020428f4
    mr      r4,r30
    bl      ext_020330f4
    cmpwi   r3,0
    beq-    L02046c50
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,0
    blr
L02046c50:
    lwz     r12,0(r28)
    lwz     r0,156(r12)
    mtctr   r0
    mr      r4,r29
    mr      r5,r30
    li      r6,0
    mr      r3,r28
    bctrl
    cmpwi   r31,0
    beq-    L02046c9c
    cmpwi   r3,21
    ble-    L02046c98
    li      r0,21
    stw     r0,0(r31)
    lwz     r0,0(r31)
    cntlzw  r0,r3
    srwi    r3,r0,5
    b       L02046ca4
L02046c98:
    stw     r3,0(r31)
L02046c9c:
    cntlzw  r0,r3
    srwi    r3,r0,5
L02046ca4:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
