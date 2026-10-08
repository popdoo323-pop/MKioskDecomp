# ItemCoin virtual method at 0x02132ae4. Sets r4 = 0 and r5 = r4, then tail-calls FUN_023f8f88.
# Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl ItemCoin_Tail_02132ae4
ItemCoin_Tail_02132ae4:
    li      r4, 0
    or      r5, r4, r4
    b       FUN_023f8f88
