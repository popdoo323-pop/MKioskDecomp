# Converted from the disassembly of 0x02006508 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_02006508
Batch_02006508:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,280(r31)
    cmpwi   r0,0
    ble-    L02006540
    mr      r3,r31
    bl      ext_02029a08
    mr      r3,r31
    bl      ext_02029aa0
    mr      r3,r31
    bl      ext_02029b4c
L02006540:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
