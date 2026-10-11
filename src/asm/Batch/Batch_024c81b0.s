# Converted from the disassembly of 0x024c81b0 (216 bytes). Name is a placeholder.
    .text
    .globl Batch_024c81b0
Batch_024c81b0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r9,r3
    stw     r0,20(r1)
    lwz     r5,0(r4)
    lwz     r10,180(r9)
    cmpwi   r5,2
    lwz     r6,28(r10)
    bne-    L024c81f8
    cmplwi  r6,1
    lwz     r11,32(r10)
    ble-    L024c81e8
    addi    r11,r11,4
L024c81e8:
    cmpwi   r5,2
    lwz     r3,0(r11)
    bne-    L024c8230
    b       L024c8214
L024c81f8:
    cmplwi  r6,2
    lwz     r12,32(r10)
    ble-    L024c8208
    addi    r12,r12,8
L024c8208:
    cmpwi   r5,2
    lwz     r3,0(r12)
    bne-    L024c8230
L024c8214:
    lwz     r0,4(r3)
    lis     r8,4107
    addi    r31,r9,428
    cmpwi   r0,0
    lfs     f1,-22840(r8)
    bne-    L024c825c
    b       L024c8248
L024c8230:
    lwz     r0,4(r3)
    lis     r8,4107
    addi    r31,r9,429
    cmpwi   r0,0
    lfs     f1,-22840(r8)
    bne-    L024c825c
L024c8248:
    li      r4,0
    bl      ext_0247f90c
    li      r0,0
    stb     r0,0(r31)
    b       L024c8274
L024c825c:
    cmpwi   r0,1
    bne-    L024c826c
    li      r4,0
    bl      ext_0247f854
L024c826c:
    li      r0,0
    stb     r0,0(r31)
L024c8274:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
