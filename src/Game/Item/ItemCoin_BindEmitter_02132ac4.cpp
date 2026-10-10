// ItemCoin bind emitter at 0x02132ac4 (32 bytes). Byte-identical to the original (tools/verify_cpp.py).
extern "C" void FUN_020db0e4(void *target, void *data, const char *name);
extern const char kBindEmitterName[];

void ItemCoin_BindEmitter_02132ac4(char *self) {
    void *target = *(void **)(self + 0x1fc);
    if (target == 0) {
        return;
    }
    FUN_020db0e4(target, self + 0x308, kBindEmitterName);
}
