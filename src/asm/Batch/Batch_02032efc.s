# Converted from the disassembly of 0x02032efc (248 bytes). Name is a placeholder.
    .text
    .globl Batch_02032efc
Batch_02032efc:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r28,16(r1)
    mr      r28,r3
    stw     r31,28(r1)
    stw     r29,20(r1)
    mr.     r31,r6
    stw     r30,24(r1)
    stw     r0,36(r1)
    mr      r29,r4
    bne-    L02032f40
    lwz     r3,8(r28)
    mr      r4,r29
    li      r5,0
    bl      ext_0262ee08
    mr.     r31,r3
    beq-    L02032fd0
L02032f40:
    bl      ext_02041f68
    bl      ext_02042680
    addi    r30,r3,384
    mr      r3,r30
    bl      ext_0262b790
    li      r6,0
    mr      r5,r29
    mr      r4,r31
    mr      r3,r28
    bl      ext_020547c8
    cmpwi   r3,0
    bne-    L02032fc8
    li      r5,0
    lwz     r3,4(r28)
    mr      r4,r29
    addi    r6,r1,8
    stw     r5,8(r1)
    bl      ext_02052e2c
    lwz     r6,8(r1)
    mr      r3,r28
    mr      r4,r31
    mr      r5,r29
    bl      ext_020327ac
    mr      r3,r30
    bl      ext_0262b7c4
    lwz     r28,16(r1)
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    mr      r3,r31
    lwz     r31,28(r1)
    mtlr    r0
    lwz     r30,24(r1)
    addi    r1,r1,32
    blr
L02032fc8:
    mr      r3,r30
    bl      ext_0262b7c4
L02032fd0:
    lwz     r28,16(r1)
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    li      r3,0
    blr
