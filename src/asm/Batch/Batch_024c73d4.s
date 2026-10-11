# Converted from the disassembly of 0x024c73d4 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_024c73d4
Batch_024c73d4:
    lwz     r8,8(r3)
    lis     r12,4117
    lwz     r11,-3296(r12)
    neg     r9,r8
    andc    r0,r9,r8
    lwz     r11,460(r11)
    srwi    r0,r0,31
    add     r11,r11,r0
    extsb   r11,r11
    mr      r9,r8
    stb     r11,1(r3)
    lwz     r8,-3296(r12)
    lwz     r0,424(r8)
    cmpwi   r0,1
    bne-    L024c7418
    li      r11,1
    stb     r11,1(r3)
L024c7418:
    cmpwi   r9,0
    li      r10,0
    ble-    L024c742c
    addi    r10,r11,-1
    extsb   r10,r10
L024c742c:
    stb     r10,0(r3)
    blr
