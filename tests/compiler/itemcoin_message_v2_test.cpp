// Compiler test for ItemCoin_Message_02132ff4 (68 bytes), version 2. Not part of the game build.
// The original's type test is an unsigned range check (below 1, then equal to 1), which is how a switch with two cases
// is lowered, so the source uses a switch. Field offsets: type +0x8, arg +0xc, handler +0x10.
struct CoinMessage {
    char pad0[8];
    unsigned int type;   // +0x8
    int arg;             // +0xc
    void *handler;       // +0x10
};

typedef void (*CallbackFn)(void *msg, void *self);
typedef void (*VirtualFn)(void *self, int arg);

void ItemCoin_Message_02132ff4(void *self, CoinMessage *msg) {
    switch (msg->type) {
    case 0: {
        CallbackFn cb = *(CallbackFn *)((char *)msg->handler + 0x2c);
        cb(msg, self);
        break;
    }
    case 1: {
        VirtualFn fn = *(VirtualFn *)(*(char **)self + 0x64);
        fn(self, msg->arg);
        break;
    }
    default:
        break;
    }
}
