# Converted from the disassembly of 0x02017f10 (196 bytes). Name is a placeholder.
    .text
    .globl Batch_02017f10
Batch_02017f10:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r12,104(r30)
    lwz     r0,68(r12)
    cmpwi   r0,-1
    beq-    L02017fb4
    mr      r3,r30
    bl      ext_02016050
    cmpwi   r3,0
    beq-    L02017fb4
    lwz     r12,104(r30)
    lwz     r0,68(r12)
    cmpwi   r0,10
    bne-    L02017fac
    lwz     r12,96(r30)
    cmpwi   r12,0
    bne-    L02017f70
    mr      r3,r30
    bl      ext_02017d84
    b       L02017fb4
L02017f70:
    lwz     r12,184(r12)
    cmpwi   r12,0
    beq-    L02017fac
    lwz     r31,8(r12)
    lwz     r3,84(r31)
    bl      ext_02186008
    cmpwi   r3,0
    bne-    L02017fa0
    lwz     r3,84(r31)
    bl      ext_02186020
    cmpwi   r3,0
    beq-    L02017fac
L02017fa0:
    lbz     r0,120(r30)
    cmpwi   r0,0
    beq-    L02017fb4
L02017fac:
    mr      r3,r30
    bl      ext_02017d84
L02017fb4:
    mr      r3,r30
    bl      ext_02016e9c
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
