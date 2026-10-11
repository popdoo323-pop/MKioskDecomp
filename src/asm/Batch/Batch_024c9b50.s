# Converted from the disassembly of 0x024c9b50 (296 bytes). Name is a placeholder.
    .text
    .globl Batch_024c9b50
Batch_024c9b50:
    mr      r11,r5
    subf    r12,r11,r6
    cmpwi   r12,2
    blt-    L024c9c08
    lwz     r9,4(r4)
    lwz     r8,0(r4)
L024c9b68:
    add     r10,r11,r6
    srawi   r12,r10,1
    addze   r10,r12
    cmplw   r10,r8
    bge-    L024c9b90
    slwi    r3,r10,2
    lfsx    f0,r9,r3
    fcmpu   cr0,f1,f0
    bge-    L024c9bb0
    b       L024c9b9c
L024c9b90:
    lfs     f0,0(r9)
    fcmpu   cr0,f1,f0
    bge-    L024c9bb0
L024c9b9c:
    mr      r6,r10
    subf    r12,r11,r6
    cmpwi   r12,2
    bge+    L024c9b68
    b       L024c9c08
L024c9bb0:
    addi    r12,r10,1
    cmplw   r12,r8
    bge-    L024c9bd8
    slwi    r12,r10,2
    add     r11,r9,r12
    lfs     f0,4(r11)
    fcmpu   cr0,f1,f0
    mr      r11,r10
    bge-    L024c9bfc
    b       L024c9be8
L024c9bd8:
    lfs     f0,0(r9)
    fcmpu   cr0,f1,f0
    mr      r11,r10
    bge-    L024c9bfc
L024c9be8:
    mr      r6,r10
    subf    r12,r11,r6
    cmpwi   r12,1
    bne-    L024c9c34
    b       L024c9c10
L024c9bfc:
    subf    r12,r11,r6
    cmpwi   r12,2
    bge+    L024c9b68
L024c9c08:
    cmpwi   r12,1
    bne-    L024c9c34
L024c9c10:
    lwz     r12,0(r4)
    cmplw   r6,r12
    lwz     r12,4(r4)
    bge-    L024c9c28
    slwi    r10,r6,2
    add     r12,r12,r10
L024c9c28:
    lfs     f0,0(r12)
    fcmpu   cr0,f1,f0
    bge-    L024c9c38
L024c9c34:
    mr      r6,r11
L024c9c38:
    cmpwi   r7,0
    bne-    L024c9c70
    lwz     r12,0(r4)
    cmplw   r6,r12
    lwz     r12,4(r4)
    bge-    L024c9c58
    slwi    r11,r6,2
    add     r12,r12,r11
L024c9c58:
    lfs     f0,0(r12)
    fcmpu   cr0,f0,f1
    bne-    L024c9c70
    cmpw    r6,r5
    ble-    L024c9c70
    addi    r6,r6,-1
L024c9c70:
    mr      r3,r6
    blr
