# Converted from the disassembly of 0x02017c24 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_02017c24
Batch_02017c24:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    li      r31,1
    mr      r30,r3
    stw     r0,20(r1)
    bl      ext_02016050
    cmpwi   r3,0
    beq-    L02017c84
    lwz     r12,104(r30)
    lwz     r10,68(r12)
    cmpwi   r10,-1
    beq-    L02017c88
    lwz     r11,68(r12)
    cmplwi  r11,3
    beq-    L02017c78
    cmplwi  r11,7
    beq-    L02017c78
    cmplwi  r11,11
    bne-    L02017c88
L02017c78:
    lbz     r0,168(r30)
    cmpwi   r0,0
    beq-    L02017c88
L02017c84:
    li      r31,0
L02017c88:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
