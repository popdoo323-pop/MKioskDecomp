// Compiler test for the ItemCoin float getter at 0x02133298 (12 bytes). Not part of the game build.
// The game loads one float from 0x10184fb8 and returns it. The test declares that constant extern so the linker places
// it at the game's address (--define kItemCoinValue=0x10184fb8).
extern const float kItemCoinValue;

float ItemCoin_Vfn_02133298() {
    return kItemCoinValue;
}
