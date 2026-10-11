# Converted from the disassembly of 0x02027c88 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_02027c88
Batch_02027c88:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,4(r31)
    cmpwi   r0,0
    ble-    L02027d1c
    lwz     r12,44(r31)
    cmpwi   r12,0
    beq-    L02027cc0
    lbz     r12,292(r12)
    cmpwi   r12,0
    bne-    L02027d14
L02027cc0:
    lwz     r0,60(r31)
    cmplwi  r0,1
    blt-    L02027ce4
    beq-    L02027cf8
    cmplwi  r0,2
    beq-    L02027d0c
    mr      r3,r31
    bl      ext_02027aa8
    b       L02027d1c
L02027ce4:
    mr      r3,r31
    bl      ext_020277ec
    mr      r3,r31
    bl      ext_02027aa8
    b       L02027d1c
L02027cf8:
    mr      r3,r31
    bl      ext_0202791c
    mr      r3,r31
    bl      ext_02027aa8
    b       L02027d1c
L02027d0c:
    mr      r3,r31
    bl      ext_02027978
L02027d14:
    mr      r3,r31
    bl      ext_02027aa8
L02027d1c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
