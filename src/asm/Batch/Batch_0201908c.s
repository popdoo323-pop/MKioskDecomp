# Converted from the disassembly of 0x0201908c (244 bytes). Name is a placeholder.
    .text
    .globl Batch_0201908c
Batch_0201908c:
    li      r6,0
    addi    r10,r3,148
    addi    r8,r3,196
    mr      r5,r6
    addi    r7,r3,20
    addi    r9,r3,68
L020190a4:
    mr      r4,r5
    add     r11,r10,r5
L020190ac:
    cmplwi  r6,12
    bge-    L020190c8
    lfsx    f9,r7,r4
    cmplwi  r6,12
    stfs    f9,0(r11)
    blt-    L020190d8
    b       L020190e8
L020190c8:
    lfs     f9,0(r7)
    cmplwi  r6,12
    stfs    f9,0(r11)
    bge-    L020190e8
L020190d8:
    cmplwi  r6,12
    add     r11,r8,r4
    blt-    L020190f4
    b       L02019140
L020190e8:
    cmplwi  r6,12
    mr      r11,r8
    bge-    L02019140
L020190f4:
    lfsx    f10,r9,r4
    stfs    f10,0(r11)
    lfs     f11,124(r3)
    lfs     f13,136(r3)
    stfs    f11,244(r3)
    stfs    f13,252(r3)
    addi    r4,r4,4
    lfs     f12,128(r3)
    addi    r5,r5,4
    lfs     f0,140(r3)
    addi    r6,r6,1
    stfs    f12,248(r3)
    cmpwi   r6,12
    stfs    f0,256(r3)
    bgelr-
L02019130:
    cmplwi  r6,12
    blt+    L020190a4
    mr      r11,r10
    b       L020190ac
L02019140:
    lfs     f10,0(r9)
    stfs    f10,0(r11)
    lfs     f11,124(r3)
    lfs     f13,136(r3)
    stfs    f11,244(r3)
    stfs    f13,252(r3)
    addi    r4,r4,4
    lfs     f12,128(r3)
    addi    r5,r5,4
    lfs     f0,140(r3)
    addi    r6,r6,1
    stfs    f12,248(r3)
    cmpwi   r6,12
    stfs    f0,256(r3)
    blt+    L02019130
    blr
