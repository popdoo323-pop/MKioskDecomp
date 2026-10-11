# Converted from the disassembly of 0x020395b4 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_020395b4
Batch_020395b4:
    lis     r12,4117
    lwz     r12,1072(r12)
    cmpwi   r12,5
    bne-    L020395d4
    lis     r11,4120
    lha     r12,-11556(r11)
    add     r4,r12,r4
    b       ext_0203959c
L020395d4:
    lis     r10,4120
    lha     r12,-11558(r10)
    add     r4,r12,r4
    b       ext_0203959c
