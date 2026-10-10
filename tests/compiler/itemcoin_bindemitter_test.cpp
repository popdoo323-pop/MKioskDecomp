// Compiler test for ItemCoin_BindEmitter_02132ac4 (32 bytes). Not part of the game build.
// If the field at +0x1fc is zero, return. Otherwise tail-call FUN_020db0e4 with that field, the object's +0x308 block
// and the string constant at 0x10015f70. Both external names are supplied with --define (the function has C linkage;
// the constant is an extern array placed at its game address).
extern "C" void FUN_020db0e4(void *target, void *data, const char *name);
extern const char kBindEmitterName[];

void ItemCoin_BindEmitter_02132ac4(char *self) {
    void *target = *(void **)(self + 0x1fc);
    if (target == 0) {
        return;
    }
    FUN_020db0e4(target, self + 0x308, kBindEmitterName);
}
