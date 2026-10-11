# Converted from the disassembly of 0x02029cac (32 bytes). Name is a placeholder.
    .text
    .globl Batch_02029cac
Batch_02029cac:
    lwz     r11,80(r3)
    lis     r12,4120
    lwz     r12,-13088(r12)
    lwz     r11,192(r11)
    cmpw    r11,r12
    mfcr    r0
    srwi    r3,r0,31
    blr
