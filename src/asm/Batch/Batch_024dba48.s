# Converted from the disassembly of 0x024dba48 (224 bytes). Name is a placeholder.
    .text
    .globl Batch_024dba48
Batch_024dba48:
    li      r11,1
    li      r6,3
    li      r12,0
    stb     r11,44(r3)
    addi    r11,r3,200
    addi    r9,r3,212
    stw     r12,48(r3)
    b       L024dba70
L024dba68:
    cmplwi  r6,4
    bge-    L024dba7c
L024dba70:
    mr      r8,r9
    li      r12,1
    b       L024dba80
L024dba7c:
    mr      r8,r11
L024dba80:
    lwz     r7,52(r3)
    lwz     r10,48(r3)
    lwz     r8,0(r8)
    cmpw    r10,r7
    stb     r12,44(r3)
    bge-    L024dbab0
    lwz     r7,56(r3)
    slwi    r5,r10,2
    stwx    r8,r5,r7
    lwz     r10,48(r3)
    addi    r10,r10,1
    stw     r10,48(r3)
L024dbab0:
    addic.  r6,r6,-1
    addi    r9,r9,-4
    bge+    L024dba68
    li      r6,3
    addi    r12,r3,216
    addi    r11,r3,228
    b       L024dbad4
L024dbacc:
    cmplwi  r6,4
    bge-    L024dbae0
L024dbad4:
    mr      r8,r11
    li      r9,1
    b       L024dbae4
L024dbae0:
    mr      r8,r12
L024dbae4:
    lwz     r7,52(r3)
    lwz     r10,48(r3)
    lwz     r8,0(r8)
    cmpw    r10,r7
    stb     r9,44(r3)
    bge-    L024dbb14
    lwz     r7,56(r3)
    slwi    r5,r10,2
    stwx    r8,r5,r7
    lwz     r10,48(r3)
    addi    r10,r10,1
    stw     r10,48(r3)
L024dbb14:
    addic.  r6,r6,-1
    addi    r11,r11,-4
    bge+    L024dbacc
    stb     r4,240(r3)
    blr
