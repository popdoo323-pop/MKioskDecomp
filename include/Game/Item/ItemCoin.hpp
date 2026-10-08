// PLACEHOLDER: class, member and function names here are proposals from decompiler analysis.
// Offsets are observed, not verified against a matching build. Do not treat as final.
#pragma once
// ItemCoin - layout notes from Turbo.rpx. Offsets re-verified against decompiler output on 2026-10-07. Not matching.
// Item type id 7; name-table index 8 ("ItemCoin") because the table starts at None = -1 (verified).

class ItemBase_; // (invented) real base class name unknown; base ctor FUN_021188a4, base init FUN_0211b4c4

class ItemCoin /* : public ItemBase_ */ {
public:
    ItemCoin(int slot);              // 0x02131904 (allocs 0x320 bytes)
    void LoadModel();                // 0x02131994, virtual slot +0x18c; loads /item/ItemCoin/ItemCoin.bfres
    // vtable 0x10015fd8 (8-byte entries; function pointer in the first word of each pair for slots >= +0x17c):
    //   +0x17c 0x02133298 returns a float constant (DAT_10184fb8)
    //   +0x18c 0x02131994 LoadModel
    //   +0x194 0x02132ac4 binds an effect emitter name at this+0x308 (if this+0x1fc != 0)
    //   +0x19c 0x02133258 empty
    //   +0x1a4 0x02132ae4 calls FUN_023f8f88(this, 0, 0)
    //   +0x1ec 0x021212c4 shared item effect setup (WaterSplash / SandSplash / LavaSplash, item SE list)
    //   early slots: 0x0211b4c4 base init, 0x0211b830 state reset, 0x0211c4dc / 0x02132ff0 / 0x0212552c empty,
    //                0x02132ff4 message handler (msg type at msg+8: 0 forwards, 1 calls this->vtbl+0x64)

private:
    // +0x00 vtable            +0x04 ItemCoinManager*     +0x08 copied from manager +0x08
    // +0x4c bfres resource handle
    // +0x58 model archive pointer (= *(handle + 0x90))
    // +0x15c item type id (7)   [read by base init as param_1[0x57]]
    // +0x304 handle of the skeletal animation named "Wait" (looked up in the model archive)
    // member array: 1 element x 4 bytes starts at +0x304 (ctor), array ctor FUN_0292e4a4
    // sizeof == 0x320
};

class ItemCoinManager {
public:
    void Init();                     // 0x02133314
private:
    // +0x08 copied into each coin   +0x24 capacity (= pool size)   +0x28 ItemCoin** array   +0x30 count
    // +0x38 name string "ItemCoin"  +0x94 pool size (FUN_0215d9dc with type id 7)
};
