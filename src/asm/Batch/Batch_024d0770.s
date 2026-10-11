# Converted from the disassembly of 0x024d0770 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024d0770
Batch_024d0770:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,104(r31)
    cmpwi   r0,0
    ble-    L024d07c4
    lwz     r0,108(r31)
    cmpwi   r0,0
    ble-    L024d07c4
    mr      r3,r31
    bl      ext_024d02c8
    mr      r3,r31
    bl      ext_024d05d4
    mr      r3,r31
    bl      ext_024cf514
    mr      r3,r31
    bl      ext_024d0064
    li      r0,0
    stb     r0,233(r31)
L024d07c4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
