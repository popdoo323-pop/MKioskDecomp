#pragma once
// ItemCoin - layout notes from analysis of Turbo.rpx. Offsets are observed, NOT verified; not matching.
// Binary addresses are for SHA-256 4dd6b212...409c8d. Class/base names marked (invented) are placeholders.

class ItemBase_; // (invented) real base class name unknown; ctor is FUN_021188a4

class ItemCoin /* : public ItemBase_ */ {
public:
    ItemCoin(int slot);              // 0x02131904 (allocs 0x320 bytes, base ctor type id 7)
    void LoadModel();                // 0x02131994 (/item/ItemCoin/ItemCoin.bfres)
    // vtable at 0x10015fd8; method addresses still to be decompiled:
    //   0x0211b4c4 0x0211b830 0x0211c4dc 0x02132ff0 0x0212552c 0x02132ff4

private:
    // +0x00  vtable
    // +0x04  ItemCoinManager* mManager (set by pool init)
    // +0x08  copied from manager +0x08
    // +0x4c  bfres resource handle
    // +0x58  bfres model/archive pointer
    // +0x304 handle written by LoadModel; member array of 1 x 4 bytes starts here
    // sizeof == 0x320
};

class ItemCoinManager {
public:
    void Init();                     // 0x02133314: name "ItemCoin", create pool, back-link each coin
private:
    // +0x08  copied into each coin
    // +0x24  capacity   +0x28 ItemCoin** array   +0x30 count
    // +0x38  name string   +0x94 pool size (from FUN_0215d9dc with type id 7)
};
