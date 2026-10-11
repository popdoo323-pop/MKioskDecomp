# Converted from the disassembly of 0x024d6ccc (460 bytes). Name is a placeholder.
    .text
    .globl Batch_024d6ccc
Batch_024d6ccc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,0(r4)
    stw     r5,564(r31)
    stw     r0,560(r31)
    lwz     r9,0(r4)
    cmpwi   r9,-1
    mr      r4,r6
    beq-    L024d6dd4
    lwz     r0,556(r31)
    cmplwi  r0,1
    blt-    L024d6d28
    beq-    L024d6d44
    cmplwi  r0,2
    beq-    L024d6d60
    lwz     r12,568(r31)
    cmpwi   r12,0
    li      r5,0
    ble-    L024d6e3c
    b       L024d6d78
L024d6d28:
    mr      r3,r31
    bl      ext_024d5e88
    lwz     r12,568(r31)
    cmpwi   r12,0
    li      r5,0
    ble-    L024d6e3c
    b       L024d6d78
L024d6d44:
    mr      r3,r31
    bl      ext_024d670c
    lwz     r12,568(r31)
    cmpwi   r12,0
    li      r5,0
    ble-    L024d6e3c
    b       L024d6d78
L024d6d60:
    mr      r3,r31
    bl      ext_024d6a78
    lwz     r12,568(r31)
    cmpwi   r12,0
    li      r5,0
    ble-    L024d6e3c
L024d6d78:
    addi    r3,r31,572
L024d6d7c:
    mulli   r0,r5,184
    add     r6,r3,r0
    lwz     r7,4(r6)
    lbz     r6,68(r7)
    rlwinm  r8,r6,0,24,30
    addic.  r12,r12,-1
    addi    r9,r8,1
    addi    r5,r5,1
    stb     r9,68(r7)
    beq-    L024d6e38
L024d6da4:
    cmplwi  r5,6
    blt+    L024d6d7c
    lwz     r7,4(r3)
    lbz     r10,68(r7)
    rlwinm  r11,r10,0,24,30
    addic.  r12,r12,-1
    addi    r0,r11,1
    addi    r5,r5,1
    stb     r0,68(r7)
    bne+    L024d6da4
    lwz     r12,568(r31)
    b       L024d6e3c
L024d6dd4:
    lwz     r12,568(r31)
    li      r5,0
    stw     r5,104(r31)
    cmpwi   r12,0
    stw     r5,108(r31)
    ble-    L024d6e3c
    addi    r3,r31,572
L024d6df0:
    mulli   r6,r5,184
    add     r10,r3,r6
    lwz     r11,4(r10)
    lbz     r7,68(r11)
    addic.  r12,r12,-1
    rlwinm  r8,r7,0,24,30
    addi    r5,r5,1
    stb     r8,68(r11)
    beq-    L024d6e38
L024d6e14:
    cmplwi  r5,6
    blt+    L024d6df0
    lwz     r11,4(r3)
    lbz     r0,68(r11)
    addic.  r12,r12,-1
    rlwinm  r0,r0,0,24,30
    addi    r5,r5,1
    stb     r0,68(r11)
    bne+    L024d6e14
L024d6e38:
    lwz     r12,568(r31)
L024d6e3c:
    cmpwi   r12,0
    li      r5,0
    ble-    L024d6e84
    addi    r3,r31,572
    li      r11,1
L024d6e50:
    mulli   r4,r5,184
    add     r7,r3,r4
    addi    r5,r5,1
    addic.  r12,r12,-1
    stb     r11,180(r7)
    beq-    L024d6e84
    li      r9,1
L024d6e6c:
    cmplwi  r5,6
    blt+    L024d6e50
    addic.  r12,r12,-1
    addi    r5,r5,1
    stb     r9,180(r3)
    bne+    L024d6e6c
L024d6e84:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
