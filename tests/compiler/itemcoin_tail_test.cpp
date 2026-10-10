// Compiler test for ItemCoin_Tail_02132ae4 (12 bytes). Not part of the game build.
// The game sets the two arguments after the object pointer to zero and tail-calls FUN_023f8f88 (C linkage, so the name
// is not mangled; supplied with --define FUN_023f8f88=0x023f8f88).
extern "C" void FUN_023f8f88(void *self, int a, int b);

void ItemCoin_Tail_02132ae4(void *self) {
    FUN_023f8f88(self, 0, 0);
}
