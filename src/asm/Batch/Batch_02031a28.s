# Converted from the disassembly of 0x02031a28 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_02031a28
Batch_02031a28:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,84(r31)
    bl      ext_0218624c
    mr      r30,r3
    lwz     r3,84(r31)
    bl      ext_02186240
    cmpwi   r30,2
    li      r0,0
    bne-    L02031a6c
    cmpwi   r3,7
    bne-    L02031a6c
    li      r0,1
L02031a6c:
    clrlwi  r3,r0,24
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
