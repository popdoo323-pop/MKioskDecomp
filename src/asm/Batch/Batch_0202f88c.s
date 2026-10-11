# Converted from the disassembly of 0x0202f88c (56 bytes). Name is a placeholder.
    .text
    .globl Batch_0202f88c
Batch_0202f88c:
    lis     r12,4120
    lwz     r8,96(r3)
    lwz     r12,-12536(r12)
    cmpw    r8,r12
    li      r0,0
    ble-    L0202f8bc
    lis     r11,4120
    lwz     r11,-12528(r11)
    add     r9,r12,r11
    cmpw    r8,r9
    bge-    L0202f8bc
    li      r0,1
L0202f8bc:
    clrlwi  r3,r0,24
    blr
