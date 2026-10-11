# Converted from the disassembly of 0x02038f48 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_02038f48
Batch_02038f48:
    lwz     r11,460(r3)
    cmplwi  r11,13
    li      r0,0
    ble-    L02038f60
    lwz     r12,468(r3)
    lwz     r0,52(r12)
L02038f60:
    mr      r3,r0
    b       ext_0262efe0
