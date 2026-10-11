# Converted from the disassembly of 0x02016148 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_02016148
Batch_02016148:
    lwz     r0,0(r3)
    cmplwi  r0,2
    li      r3,0
    ble-    L02016160
    cmplwi  r0,4
    bnelr-
L02016160:
    li      r3,1
    blr
