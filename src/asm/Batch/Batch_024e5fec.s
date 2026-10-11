# Converted from the disassembly of 0x024e5fec (32 bytes). Name is a placeholder.
    .text
    .globl Batch_024e5fec
Batch_024e5fec:
    lwz     r12,76(r3)
    cmpwi   r12,4
    bnelr-
    lwz     r3,200(r3)
    lwz     r0,536(r3)
    cmpwi   r0,0
    bnelr-
    b       ext_024cd5e4
