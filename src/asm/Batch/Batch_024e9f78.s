# Converted from the disassembly of 0x024e9f78 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024e9f78
Batch_024e9f78:
    lwz     r11,660(r3)
    cmpwi   r11,0
    li      r8,0
    ble-    L024e9fcc
    addi    r10,r3,704
    mr      r12,r10
    b       L024e9f9c
L024e9f94:
    cmplwi  r8,4
    bge-    L024e9fa4
L024e9f9c:
    mr      r9,r12
    b       L024e9fa8
L024e9fa4:
    mr      r9,r10
L024e9fa8:
    lwz     r0,12(r9)
    cmpwi   r0,0
    ble-    L024e9fbc
    li      r3,1
    blr
L024e9fbc:
    addic.  r11,r11,-1
    addi    r8,r8,1
    addi    r12,r12,32
    bne+    L024e9f94
L024e9fcc:
    li      r3,0
    blr
