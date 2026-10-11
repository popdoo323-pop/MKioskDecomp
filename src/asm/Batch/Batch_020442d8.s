# Converted from the disassembly of 0x020442d8 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_020442d8
Batch_020442d8:
    mflr    r0
    stw     r0,4(r1)
    mr      r7,r3
    stwu    r1,-8(r1)
    bl      ext_020440a8
    cmpwi   r3,0
    beq-    L02044310
    lwz     r12,0(r4)
    cmpwi   r12,0
    lwz     r0,8(r7)
    beq-    L02044310
    lwz     r3,0(r4)
    mr      r4,r0
    bl      ext_025878ac
L02044310:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
