# Converted from the disassembly of 0x02019204 (292 bytes). Name is a placeholder.
    .text
    .globl Batch_02019204
Batch_02019204:
    li      r6,0
    addi    r10,r3,20
    addi    r8,r3,68
    mr      r5,r6
    addi    r7,r3,148
    addi    r9,r3,196
L0201921c:
    mr      r4,r5
    add     r11,r10,r5
L02019224:
    cmplwi  r6,12
    bge-    L02019244
    lfsx    f10,r7,r4
    fmuls   f9,f10,f1
    cmplwi  r6,12
    stfs    f9,0(r11)
    blt-    L02019258
    b       L02019268
L02019244:
    lfs     f10,0(r7)
    fmuls   f9,f10,f1
    cmplwi  r6,12
    stfs    f9,0(r11)
    bge-    L02019268
L02019258:
    cmplwi  r6,12
    add     r11,r8,r4
    blt-    L02019274
    b       L020192d4
L02019268:
    cmplwi  r6,12
    mr      r11,r8
    bge-    L020192d4
L02019274:
    lfsx    f12,r9,r4
    fmuls   f11,f12,f1
    stfs    f11,0(r11)
    lfs     f12,248(r3)
    lfs     f0,244(r3)
    fmuls   f11,f12,f1
    lfs     f6,252(r3)
    fmuls   f13,f0,f1
    stfs    f11,128(r3)
    lfs     f8,256(r3)
    fmuls   f0,f6,f1
    stfs    f13,124(r3)
    addi    r6,r6,1
    fmuls   f7,f8,f1
    stfs    f0,136(r3)
    cmpwi   r6,12
    addi    r4,r4,4
    addi    r5,r5,4
    stfs    f7,140(r3)
    bgelr-
L020192c4:
    cmplwi  r6,12
    blt+    L0201921c
    mr      r11,r10
    b       L02019224
L020192d4:
    lfs     f12,0(r9)
    fmuls   f11,f12,f1
    stfs    f11,0(r11)
    lfs     f12,248(r3)
    lfs     f0,244(r3)
    fmuls   f11,f12,f1
    lfs     f6,252(r3)
    fmuls   f13,f0,f1
    stfs    f11,128(r3)
    lfs     f8,256(r3)
    fmuls   f0,f6,f1
    stfs    f13,124(r3)
    addi    r6,r6,1
    fmuls   f7,f8,f1
    stfs    f0,136(r3)
    cmpwi   r6,12
    addi    r4,r4,4
    addi    r5,r5,4
    stfs    f7,140(r3)
    blt+    L020192c4
    blr
