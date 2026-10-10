# Thunk at 0x0211b82c (4 bytes): a plain branch (no link) to the shared item reset at 0x02119264. The ItemCoin state
# reset calls this thunk. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl ItemCoin_SharedResetThunk_0211b82c
ItemCoin_SharedResetThunk_0211b82c:
    b       ext_02119264
