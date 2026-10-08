# ItemCoin create wrapper at 0x02133970. Loads the first word of its argument into r4, sets r3 = 0 and tail-calls
# FUN_02131904 (the constructor). Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl ItemCoin_Create_02133970
ItemCoin_Create_02133970:
    lwz     r4, 0(r3)
    li      r3, 0
    b       FUN_02131904
