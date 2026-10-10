// Compiler test for ItemCoin_Message_02132ff4, version 3. Not part of the game build.
// Same switch as version 2, with the type copied into a local first. The skeleton already matches the original; this
// version tries to change which registers the compiler uses for the message pointer and the type.
struct CoinMessage {
    char pad0[8];
    unsigned int type;   // +0x8
    int arg;             // +0xc
    void *handler;       // +0x10
};

typedef void (*CallbackFn)(void *msg, void *self);
typedef void (*VirtualFn)(void *self, int arg);

void ItemCoin_Message_02132ff4(void *self, CoinMessage *msg) {
    unsigned int type = msg->type;
    switch (type) {
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
