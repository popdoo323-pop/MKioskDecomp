# Converted from the disassembly of 0x024babc4 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_024babc4
Batch_024babc4:
    mulli   r9,r4,160
    lwz     r11,0(r5)
    add     r10,r3,r9
    stw     r11,1272(r10)
    lwz     r12,4(r5)
    stw     r12,1276(r10)
    lwz     r0,8(r5)
    stw     r0,1280(r10)
    blr
