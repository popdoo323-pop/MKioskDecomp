# Converted from the disassembly of 0x02040950 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_02040950
Batch_02040950:
    lwz     r12,0(r4)
    cmpwi   r12,0
    lwz     r10,4(r3)
    beq-    L02040970
    lwz     r0,256(r12)
    cmplw   r0,r10
    bnelr-
    b       L0204097c
L02040970:
    li      r0,-1
    cmplw   r0,r10
    bnelr-
L0204097c:
    stw     r4,0(r3)
    blr
