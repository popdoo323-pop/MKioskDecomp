# Converted from the disassembly of 0x020276f0 (184 bytes). Name is a placeholder.
    .text
    .globl Batch_020276f0
Batch_020276f0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r0,4(r30)
    cmpwi   r0,2
    ble-    L02027728
    lwz     r3,40(r30)
    li      r4,100
    bl      ext_02008eb0
    cmpwi   r3,50
    bge-    L02027754
L02027728:
    mr      r3,r30
    li      r4,0
    bl      ext_020275a0
    mr      r31,r3
    mr      r3,r30
    li      r4,1
    bl      ext_020275a0
    cmpwi   r31,0
    mr      r5,r3
    beq-    L02027790
    b       L0202777c
L02027754:
    mr      r3,r30
    li      r4,1
    bl      ext_020275a0
    mr      r31,r3
    mr      r3,r30
    li      r4,2
    bl      ext_020275a0
    cmpwi   r31,0
    mr      r5,r3
    beq-    L02027790
L0202777c:
    cmpwi   r5,0
    beq-    L02027790
    mr      r4,r31
    mr      r3,r30
    bl      ext_020275f4
L02027790:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
