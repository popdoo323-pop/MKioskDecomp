# Converted from the disassembly of 0x024becd8 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024becd8
Batch_024becd8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02484fd4
    cmpwi   r3,0
    bne-    L024bed20
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024bed0c
    addi    r12,r12,4
L024bed0c:
    li      r4,1
    lwz     r3,0(r12)
    li      r5,0
    mr      r6,r4
    bl      ext_0247faa4
L024bed20:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
