# ItemCoin virtual method at 0x02132ac4. If this+0x1fc is zero, return. Otherwise pass this+0x308 and the
# string at 0x10015f70 to FUN_020db0e4 (tail call). Written from the disassembly of the original bytes.
# Name is a placeholder.
    .text
    .globl ItemCoin_BindEmitter_02132ac4
ItemCoin_BindEmitter_02132ac4:
    or      r12, r3, r3
    lwz     r3, 0x1fc(r12)
    cmpwi   r3, 0
    beqlr
    lis     r5, 0x1001
    addi    r4, r12, 0x308
    addi    r5, r5, 0x5f70
    b       FUN_020db0e4
