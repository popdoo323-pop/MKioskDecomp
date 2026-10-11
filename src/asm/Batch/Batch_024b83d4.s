# Converted from the disassembly of 0x024b83d4 (436 bytes). Name is a placeholder.
    .text
    .globl Batch_024b83d4
Batch_024b83d4:
    mr      r11,r3
    stwu    r1,-48(r1)
    lbz     r0,2033(r11)
    cmpwi   r0,0
    beq-    L024b8440
    lwz     r5,1912(r11)
    addi    r9,r11,2448
    lwz     r7,1916(r11)
    psq_l   f5,0(r9),0,0
    stw     r7,36(r1)
    lwz     r8,1920(r11)
    stw     r5,32(r1)
    psq_l   f6,32(r1),0,0
    stw     r8,40(r1)
    lfs     f8,40(r1)
    lis     r8,4107
    ps_sub  f0,f6,f5
    lfs     f9,2456(r11)
    addi    r12,r11,2352
    lfs     f13,-32016(r8)
    fsubs   f7,f8,f9
    mr      r6,r12
    li      r10,0
    fmr     f4,f13
    li      r3,-1
    stfs    f7,28(r1)
    b       L024b84b8
L024b8440:
    lbz     r9,2253(r11)
    cmpwi   r9,0
    beq-    L024b84a4
    lwz     r0,2132(r11)
    lwz     r8,2140(r11)
    stw     r0,32(r1)
    lwz     r10,2136(r11)
    lfs     f9,2456(r11)
    addi    r9,r11,2448
    stw     r10,36(r1)
    psq_l   f6,32(r1),0,0
    psq_l   f5,0(r9),0,0
    addi    r12,r11,2352
    stw     r8,40(r1)
    lis     r8,4107
    lfs     f8,40(r1)
    ps_sub  f0,f6,f5
    lfs     f13,-32016(r8)
    fsubs   f7,f8,f9
    mr      r6,r12
    fmr     f4,f13
    li      r3,-1
    li      r10,0
    stfs    f7,28(r1)
    b       L024b84b8
L024b84a4:
    li      r3,-1
    addi    r1,r1,48
    blr
L024b84b0:
    cmplwi  r10,8
    bge-    L024b84c0
L024b84b8:
    mr      r5,r6
    b       L024b84c4
L024b84c0:
    mr      r5,r12
L024b84c4:
    lfs     f6,2456(r11)
    lfs     f12,8(r5)
    psq_l   f11,0(r5),0,0
    fsubs   f6,f12,f6
    ps_sub  f10,f11,f5
    ps_mul  f7,f10,f0
    lfs     f10,28(r1)
    ps_sum0 f8,f7,f7,f7
    fmadds  f12,f6,f10,f8
    fcmpu   cr0,f12,f4
    stfs    f6,16(r1)
    bge-    L024b84fc
    fmr     f4,f12
    mr      r3,r10
L024b84fc:
    addi    r10,r10,1
    cmpwi   r10,4
    addi    r6,r6,12
    blt+    L024b84b0
    cmpwi   r4,0
    beq-    L024b8580
    li      r10,0
    li      r5,4
    fmr     f4,f13
    mr      r7,r10
    mtctr   r5
    li      r0,-1
L024b852c:
    cmplw   r10,r3
    beq-    L024b8570
    lfs     f7,2456(r11)
    add     r6,r12,r7
    lfs     f6,8(r6)
    psq_l   f13,0(r6),0,0
    fsubs   f6,f6,f7
    ps_sub  f11,f13,f5
    ps_mul  f8,f11,f0
    ps_sum0 f9,f8,f8,f8
    lfs     f12,28(r1)
    fmadds  f11,f6,f12,f9
    fcmpu   cr0,f11,f4
    stfs    f6,16(r1)
    bge-    L024b8570
    fmr     f4,f11
    mr      r0,r10
L024b8570:
    addi    r7,r7,12
    addi    r10,r10,1
    bdnz+   L024b852c
    stw     r0,0(r4)
L024b8580:
    addi    r1,r1,48
    blr
