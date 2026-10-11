# Converted from the disassembly of 0x020304e0 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_020304e0
Batch_020304e0:
    lbz     r11,109(r3)
    cmpwi   r11,0
    li      r0,-1
    beq-    L02030504
    lbz     r12,111(r3)
    cmpwi   r12,0
    li      r0,1
    beq-    L02030524
    b       L02030520
L02030504:
    lbz     r12,110(r3)
    cmpwi   r12,0
    beq-    L02030514
    li      r0,11
L02030514:
    lbz     r12,111(r3)
    cmpwi   r12,0
    beq-    L02030524
L02030520:
    li      r0,5
L02030524:
    mr      r3,r0
    blr
