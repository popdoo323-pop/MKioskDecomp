# Converted from the disassembly of 0x02019180 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02019180
Batch_02019180:
    li      r8,0
    addi    r6,r3,68
    mr      r12,r8
    addi    r7,r3,20
L02019190:
    mr      r11,r12
    add     r9,r7,r12
L02019198:
    lfs     f13,0(r9)
    fmuls   f13,f13,f1
    cmplwi  r8,12
    stfs    f13,0(r9)
    bge-    L020191e0
    lfsx    f0,r6,r11
    add     r10,r6,r11
    addi    r8,r8,1
    fmuls   f0,f0,f1
    addi    r12,r12,4
    cmpwi   r8,12
    addi    r11,r11,4
    stfs    f0,0(r10)
    bge-    L02019200
L020191d0:
    cmplwi  r8,12
    blt+    L02019190
    mr      r9,r7
    b       L02019198
L020191e0:
    lfs     f0,0(r6)
    addi    r8,r8,1
    fmuls   f0,f0,f1
    cmpwi   r8,12
    addi    r12,r12,4
    addi    r11,r11,4
    stfs    f0,0(r6)
    blt+    L020191d0
L02019200:
    b       ext_0201908c
