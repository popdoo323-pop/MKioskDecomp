# Converted from the disassembly of 0x024e9ce0 (260 bytes). Name is a placeholder.
    .text
    .globl Batch_024e9ce0
Batch_024e9ce0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    stw     r0,20(r1)
    lwz     r10,660(r3)
    li      r30,0
    addi    r8,r3,672
    mr.     r4,r10
    mr      r31,r30
    bgt-    L024e9d1c
    lwz     r0,0(r8)
    cmpwi   r0,7
    bne-    L024e9dcc
    b       L024e9db4
L024e9d1c:
    li      r6,0
    b       L024e9d2c
L024e9d24:
    cmplwi  r31,4
    bge-    L024e9d38
L024e9d2c:
    add     r7,r8,r6
    mr      r5,r6
    b       L024e9d3c
L024e9d38:
    mr      r7,r8
L024e9d3c:
    lwz     r12,0(r7)
    cmpwi   r12,7
    beq-    L024e9d6c
    cmplwi  r31,4
    bge-    L024e9d60
    lwzx    r0,r8,r5
    cmpwi   r0,1
    beq-    L024e9d6c
    b       L024e9dcc
L024e9d60:
    lwz     r0,0(r8)
    cmpwi   r0,1
    bne-    L024e9dcc
L024e9d6c:
    cmplwi  r31,4
    bge-    L024e9d84
    lwzx    r12,r8,r5
    cmpwi   r12,7
    bne-    L024e9d94
    b       L024e9d90
L024e9d84:
    lwz     r12,0(r8)
    cmpwi   r12,7
    bne-    L024e9d94
L024e9d90:
    addi    r30,r30,1
L024e9d94:
    addi    r5,r5,8
    addic.  r4,r4,-1
    addi    r31,r31,1
    addi    r6,r6,8
    bne+    L024e9d24
    lwz     r0,0(r8)
    cmpwi   r0,7
    bne-    L024e9dcc
L024e9db4:
    cmpwi   r10,1
    ble-    L024e9dc4
    cmpwi   r30,2
    blt-    L024e9dcc
L024e9dc4:
    addi    r4,r3,204
    bl      ext_0248d73c
L024e9dcc:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
