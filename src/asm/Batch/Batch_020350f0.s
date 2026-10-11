# Converted from the disassembly of 0x020350f0 (164 bytes). Name is a placeholder.
    .text
    .globl Batch_020350f0
Batch_020350f0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    stw     r0,20(r1)
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L02035114
    lwz     r3,420(r3)
L02035114:
    addi    r0,r3,36
    li      r3,0
    mr      r10,r0
    b       L0203512c
L02035124:
    cmplwi  r3,5
    bge-    L02035134
L0203512c:
    mr      r12,r10
    b       L02035138
L02035134:
    mr      r12,r0
L02035138:
    lwz     r8,8(r12)
    cmpwi   r8,1
    beq-    L02035150
    lwz     r9,8(r12)
    cmpwi   r9,3
    bne-    L02035160
L02035150:
    lwz     r7,20(r12)
    cmplw   r31,r7
    beq-    L02035180
    b       L0203516c
L02035160:
    li      r7,-1
    cmplw   r31,r7
    beq-    L02035180
L0203516c:
    addi    r3,r3,1
    cmpwi   r3,5
    addi    r10,r10,24
    blt+    L02035124
    li      r3,-1
L02035180:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
