# Converted from the disassembly of 0x024dca50 (28 bytes). Name is a placeholder.
    .text
    .globl Batch_024dca50
Batch_024dca50:
    lwz     r0,76(r3)
    cmpwi   r0,5
    bgelr-
    li      r12,3
    stw     r12,256(r3)
    lwz     r0,256(r3)
    b       ext_024dc76c
