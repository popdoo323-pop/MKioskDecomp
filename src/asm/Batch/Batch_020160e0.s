# Converted from the disassembly of 0x020160e0 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_020160e0
Batch_020160e0:
    lwz     r0,0(r3)
    cmplwi  r0,3
    li      r3,0
    beq-    L02016108
    cmplwi  r0,7
    bltlr-
    cmplwi  r0,8
    ble-    L02016108
    cmplwi  r0,11
    bnelr-
L02016108:
    li      r3,1
    blr
