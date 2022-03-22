#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include <stddef.h>
#include <assert.h>
#include <stdlib.h>

#define SIZE(list) (sizeof(list)/sizeof(list[0]))
#define DEBUG(...) printf(__VA_ARGS__)
#define BIT(i) (0x0001<<(i))

int imTop = 0;
uint16_t im[32768];
char *jTable[] = {"","JGT","JEQ","JGE", "JLT", "JNE", "JLE", "JMP"};
char *dTable[] = {"", "M", "D",  "MD",  "A",   "AM",  "AD",  "AMD"};

void disasm(uint16_t *im, int16_t imTop) {
  uint16_t I = 0;
  uint16_t a, c, d, j;
  char AM = ' ', op[10] = "";
  for (int PC = 0; PC<imTop; PC++) {
    I = im[PC];
    if ((I & 0x8000) == 0) { // A 指令
      printf("@%d\n", I);
    } else { // C 指令
      a = (I & 0x1000) >> 12;
      c = (I & 0x0FC0) >>  6;
      d = (I & 0x0038) >>  3;
      j = (I & 0x0007) >>  0;
      AM = (a == 0) ? 'A' : 'M';
      switch (c) { // 處理 c1..6, 計算 aluOut
        case 0x2A: sprintf(op, "0");         break; // "0",   "101010"
        case 0x3F: sprintf(op, "1");         break; // "1",   "111111"
        case 0x3A: sprintf(op, "-1");        break; // "-1",  "111010"
        case 0x0C: sprintf(op, "D");         break; // "D",   "001100"
        case 0x30: sprintf(op, "%c", AM);    break; // "AM",  "110000"
        case 0x0D: sprintf(op, "!D");        break; // "!D",  "001101"
        case 0x31: sprintf(op, "!%c", AM);   break; // "!AM", "110001"
        case 0x0F: sprintf(op, "-D");        break; // "-D",  "001111"
        case 0x33: sprintf(op, "-%c", AM);   break; // "-AM", "110011"
        case 0x1F: sprintf(op, "D+1");       break; // "D+1", "011111"
        case 0x37: sprintf(op, "%c+1", AM);  break; // "AM+1","110111"
        case 0x0E: sprintf(op, "D-1");       break; // "D-1", "001110"
        case 0x32: sprintf(op, "%c-1", AM);  break; // "AM-1","110010"
        case 0x02: sprintf(op, "D+%c", AM);  break; // "D+AM","000010"
        case 0x13: sprintf(op, "D-%c", AM);  break; // "D-AM","010011"
        case 0x07: sprintf(op, "%c-D", AM);  break; // "AM-D","000111"
        case 0x00: sprintf(op, "D&%c", AM);  break; // "D&AM","000000"
        case 0x15: sprintf(op, "D|%c", AM);  break; // "D|AM","010101"
        default: assert(0);
      }
      char head[100]="", command[100];
      if (d != 0) sprintf(head, "%s=", dTable[d]);
      if (op[0] != '\0') strcat(head, op);
      if (j != 0) 
        sprintf(command, "%s;%s", head, jTable[j]);
      else
        sprintf(command, "%s", head);
      printf("%s\n", command);
    }
  }
}

// run: ./disasm <file.bin>
int main(int argc, char *argv[]) {
  char *binFileName = argv[1];
  FILE *binFile = fopen(binFileName, "rb");
  imTop = fread(im, sizeof(uint16_t), 32768, binFile);
  fclose(binFile);
  disasm(im, imTop);
  return 0;
}
