// ItemCoin functions that are byte-identical to the original (verified by tools/verify_cpp.py).
// External names and constant addresses are listed in symbols/externs.csv.

extern "C" void FUN_023f8f88(void *self, int a, int b);
extern "C" void FUN_020db0e4(void *target, void *data, const char *name);
extern const float kItemCoinValue;
extern const char kBindEmitterName[];

// 0x02133298: float getter (12 bytes)
float ItemCoin_Vfn_02133298() {
    return kItemCoinValue;
}

// 0x02132ae4: tail call with two zero arguments (12 bytes)
void ItemCoin_Tail_02132ae4(void *self) {
    FUN_023f8f88(self, 0, 0);
}

// 0x02132ac4: conditional early return, then a tail call (32 bytes)
void ItemCoin_BindEmitter_02132ac4(char *self) {
    void *target = *(void **)(self + 0x1fc);
    if (target == 0) {
        return;
    }
    FUN_020db0e4(target, self + 0x308, kBindEmitterName);
}
