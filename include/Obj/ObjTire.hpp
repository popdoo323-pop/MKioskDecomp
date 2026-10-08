#pragma once
// Tire map object. Class name unconfirmed ("ObjTirePiece" string at 0x10071a90 has no references). Offsets observed, unverified.
class ObjTire {
public:
    void CreateHelper();             // 0x022ee1e4 (allocs 0x38 byte helper into +0x128)
    void InitSoundParams();          // 0x022ee224
    void Reset();                    // 0x022ee384
    void Update();                   // 0x022ee4bc
private:
    // vtable region ~0x100722a0; InitSoundParams is the entry at 0x1007231c
    // +0x7c sound owner   +0xc4 transform source   +0xd8 parameter block (+0x10 -> +0x198, +0x14 * 0.5 -> +0x194)
    // +0x12c SLIDE  +0x140 HIT  +0x154 COL  (sound parameter bindings, names pSE_OBJ_TIRE_*)
    // +0x19c timer (short)  +0x19e limit (short)  +0x1a4 float
};
