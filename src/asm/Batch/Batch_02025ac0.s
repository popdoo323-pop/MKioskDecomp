# Converted from the disassembly of 0x02025ac0 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_02025ac0
Batch_02025ac0:
    mflr    r0
    stwu    r1,-16(r1)
    li      r11,5
    stw     r31,12(r1)
    li      r12,0
    li      r8,20
    li      r9,4
    stw     r0,20(r1)
    lwz     r10,0(r4)
    addi    r31,r3,48
L02025ae8:
    mr      r6,r9
    addi    r4,r8,-4
    add     r5,r31,r8
L02025af4:
    cmplwi  r6,6
    bge-    L02025b34
    lwzx    r0,r31,r4
    addi    r4,r4,-4
    addi    r6,r6,-1
    addi    r12,r12,1
    addi    r8,r8,-4
    addi    r9,r9,-1
    cmpwi   r12,5
    stw     r0,0(r5)
    addi    r11,r11,-1
    bge-    L02025b5c
L02025b24:
    cmplwi  r11,6
    blt+    L02025ae8
    mr      r5,r31
    b       L02025af4
L02025b34:
    addi    r4,r4,-4
    addi    r6,r6,-1
    addi    r9,r9,-1
    addi    r12,r12,1
    lwz     r0,0(r31)
    addi    r11,r11,-1
    cmpwi   r12,5
    addi    r8,r8,-4
    stw     r0,0(r5)
    blt+    L02025b24
L02025b5c:
    lwz     r12,44(r3)
    srwi    r4,r10,16
    lwz     r3,0(r12)
    clrlwi  r5,r10,16
    bl      ext_020062f0
    stw     r3,0(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
