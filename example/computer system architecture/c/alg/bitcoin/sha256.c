#include <mhash.h>
#include <stdio.h>

int sha256(char data[], unsigned char mac[]) {
    char password[] = "Jefe";
    int keylen = 4;
    MHASH td;

    td = mhash_hmac_init(MHASH_SHA256, password, keylen,
                        mhash_get_hash_pblock(MHASH_SHA256));

    mhash(td, data, strlen(data));
    mhash_hmac_deinit(td, mac);
    return mhash_get_block_size(MHASH_SHA256); // return length
}

int hexdump(unsigned char bytes[], int len) {
    for (int j = 0; j < len; j++) {
        printf("%.2x", bytes[j]);
    }
    printf("\n");
}

int main() {
    char data[] = "john => mary : $2.7; george => john : $1.3";
    unsigned char mac[32];
    int mlen = sha256(data, mac);
    hexdump(mac, mlen);
    exit(0);
}
