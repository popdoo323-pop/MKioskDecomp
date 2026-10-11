# Converted from the disassembly of 0x024db8b0 (408 bytes). Name is a placeholder.
    .text
    .globl Batch_024db8b0
Batch_024db8b0:
    cmpwi   r4,0
    addi    r11,r3,200
    li      r6,0
    beq-    L024db980
    li      r10,0
    li      r7,4
L024db8c8:
    mr      r9,r10
    add     r12,r11,r10
L024db8d0:
    lwz     r8,0(r12)
    lwz     r12,12(r8)
    cmpwi   r12,0
    bne-    L024db8ec
    lwz     r12,16(r8)
    rlwinm  r12,r12,0,26,24
    stw     r12,16(r8)
L024db8ec:
    cmplwi  r6,4
    bge-    L024db908
    lwzx    r8,r11,r9
    lwz     r12,12(r8)
    cmpwi   r12,0
    bne-    L024db924
    b       L024db918
L024db908:
    lwz     r8,0(r11)
    lwz     r12,12(r8)
    cmpwi   r12,0
    bne-    L024db924
L024db918:
    lwz     r12,16(r8)
    rlwinm  r12,r12,0,23,21
    stw     r12,16(r8)
L024db924:
    cmplwi  r6,4
    bge-    L024db940
    lwzx    r8,r11,r9
    lwz     r12,12(r8)
    cmpwi   r12,0
    bne-    L024db95c
    b       L024db950
L024db940:
    lwz     r8,0(r11)
    lwz     r12,12(r8)
    cmpwi   r12,0
    bne-    L024db95c
L024db950:
    lwz     r12,16(r8)
    ori     r12,r12,2
    stw     r12,16(r8)
L024db95c:
    addi    r9,r9,4
    addic.  r7,r7,-1
    addi    r6,r6,1
    addi    r10,r10,4
    beqlr-
    cmplwi  r6,4
    blt+    L024db8c8
    mr      r12,r11
    b       L024db8d0
L024db980:
    li      r8,4
    li      r10,0
    b       L024db994
L024db98c:
    cmplwi  r6,4
    bge-    L024db9a0
L024db994:
    add     r12,r11,r10
    mr      r9,r10
    b       L024db9a4
L024db9a0:
    mr      r12,r11
L024db9a4:
    lwz     r7,0(r12)
    lwz     r12,12(r7)
    cmpwi   r12,0
    bne-    L024db9c0
    lwz     r12,16(r7)
    ori     r12,r12,64
    stw     r12,16(r7)
L024db9c0:
    cmplwi  r6,4
    bge-    L024db9dc
    lwzx    r7,r11,r9
    lwz     r12,12(r7)
    cmpwi   r12,0
    bne-    L024db9f8
    b       L024db9ec
L024db9dc:
    lwz     r7,0(r11)
    lwz     r12,12(r7)
    cmpwi   r12,0
    bne-    L024db9f8
L024db9ec:
    lwz     r12,16(r7)
    ori     r12,r12,512
    stw     r12,16(r7)
L024db9f8:
    cmplwi  r6,4
    bge-    L024dba14
    lwzx    r7,r11,r9
    lwz     r12,12(r7)
    cmpwi   r12,0
    bne-    L024dba30
    b       L024dba24
L024dba14:
    lwz     r7,0(r11)
    lwz     r12,12(r7)
    cmpwi   r12,0
    bne-    L024dba30
L024dba24:
    lwz     r12,16(r7)
    rlwinm  r12,r12,0,31,29
    stw     r12,16(r7)
L024dba30:
    addi    r9,r9,4
    addic.  r8,r8,-1
    addi    r6,r6,1
    addi    r10,r10,4
    bne+    L024db98c
    blr
