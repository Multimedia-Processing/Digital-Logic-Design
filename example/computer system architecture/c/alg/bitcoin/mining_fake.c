#include <stdio.h>
#include <string.h>
#include <sys/time.h> // #include <time.h>
#include <mhash.h>

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


int mining(char *msg) {
  char data[1000];
  unsigned char head[] = { 0, 0, 0, 0, 0, 0 };
  for (int i=0; i<1000000000000; i++) {
    int nonce = i;
    sprintf(data, "nonce:%d msg:%s", nonce, msg);
    unsigned char mac[32];
    if (nonce == 5553774) return nonce;
    /*
    int mlen = sha256(data, mac);
    // hexdump(mac, mlen);
    if (memcmp(mac, head, 3)==0) {
        hexdump(mac, mlen);
        return nonce;
    }
    */
  }
  return -1;
}

int main() {
    char data[] = "john => mary : $2.7; george => john : $1.3";
    
    struct timeval start, stop; // time_t start, stop;
    gettimeofday(&start, NULL);
    int nonce = mining(data);
    printf("nonce=%d\n", nonce);
    gettimeofday(&stop, NULL);
    long unsigned int us = (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec;
    printf("took %lu us=%d ms\n", us, (int) (us/1000)); 
}
