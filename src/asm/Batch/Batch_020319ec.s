# Converted from the disassembly of 0x020319ec (60 bytes). Name is a placeholder.
    .text
    .globl Batch_020319ec
Batch_020319ec:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r3,84(r3)
    bl      ext_0218624c
    addi    r0,r3,-5
    cmplwi  r0,3
    li      r0,1
    ble-    L02031a14
    li      r0,0
L02031a14:
    clrlwi  r3,r0,24
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
