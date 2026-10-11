# Converted from the disassembly of 0x020440a8 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_020440a8
Batch_020440a8:
    lbz     r11,4(r3)
    cmpwi   r11,0
    beq-    L020440bc
    li      r3,0
    blr
L020440bc:
    lwz     r8,0(r3)
    cmpwi   r8,-1
    li      r9,1
    beq-    L020440ec
    lwz     r0,0(r4)
    cmpwi   r0,0
    beq-    L020440e8
    lwz     r12,0(r4)
    lwz     r10,256(r12)
    cmplw   r10,r8
    beq-    L020440ec
L020440e8:
    li      r9,0
L020440ec:
    clrlwi  r3,r9,24
    blr
