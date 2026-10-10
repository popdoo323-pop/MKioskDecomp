// Compiler test for ItemCoin_Message_02132ff4 (68 bytes). Not part of the game build.
// Type 0 calls the callback stored at handler+0x2c with (msg, self). Type 1 calls the item's virtual slot at vtable+0x64
// with (self, msg->arg). Other types return. Field offsets: type +0x8, arg +0xc, handler +0x10.
struct CoinMessage {
    char pad0[8];
    unsigned int type;   // +0x8
    int arg;             // +0xc
    void *handler;       // +0x10
};

typedef void (*CallbackFn)(void *msg, void *self);
typedef void (*VirtualFn)(void *self, int arg);

void ItemCoin_Message_02132ff4(void *self, CoinMessage *msg) {
    if (msg->type < 1u) {
        CallbackFn cb = *(CallbackFn *)((char *)msg->handler + 0x2c);
        cb(msg, self);
    } else if (msg->type == 1u) {
        VirtualFn fn = *(VirtualFn *)(*(char **)self + 0x64);
        fn(self, msg->arg);
    }
}
