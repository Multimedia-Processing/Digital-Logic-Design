#include <stdio.h>
#include <string.h>
#include <iostream> 
#include <map> 

using namespace std;

map<string, string> dMap {
  {"", "000"}, {"M", "001"}, {"D", "010"}, {"MD", "011"},
  {"A","100"}, {"AM","101"}, {"AD","110"}, {"AMD","111"}
};

map<string, string> cMap {
  {"0",   "0101010"}, {"1",   "0111111"}, {"-1",  "0111010"},
  {"D",   "0001100"}, {"A",   "0110000"}, {"!D",  "0001101"},
  {"!A",  "0110001"}, {"-D",  "0001111"}, {"-A",  "0110011"},
  {"D+1", "0011111"}, {"A+1", "0110111"}, {"D-1", "0001110"},
  {"A-1", "0110010"}, {"D+A", "0000010"}, {"D-A", "0010011"},
  {"A-D", "0000111"}, {"D&A", "0000000"}, {"D|A", "0010101"},
  {"M",   "1110000"}, {"!M",  "1110001"}, {"-M",  "1110011"},
  {"M+1", "1110111"}, {"M-1", "1110010"}, {"D+M", "1000010"},
  {"D-M", "1010011"}, {"M-D", "1000111"}, {"D&M", "1000000"},
  {"D|M", "1010101"}
};

map<string, string> jMap {
  {"",   "000"}, {"JGT","001"}, {"JEQ","010"}, {"JGE","011"},
  {"JLT","100"}, {"JNE","101"}, {"JLE","110"}, {"JMP","111"}
};

int varTop = 16;

map<string, int> symMap {
  {"R0",0},{"R1",1},{"R2",2},{"R3",3},{"R4",4},{"R5",5},{"R6",6},{"R7",7},
  {"R8",8}, {"R9",9}, {"R10",10}, {"R11",11},{"R12",12}, {"R13",13}, {"R14",14}, {"R15",15},
  {"SCREEN",16384}, {"KBD",24576}, {"SP",0}, {"LCL",0}, {"ARG",2}, {"THIS",3}, {"THAT",4}
};

void symDump(map<string, int> *symMap) {
  printf("=================symMap===================\n");
  for(auto it = symMap->cbegin(); it != symMap->cend(); ++it) {
      cout << it->first << " " << it->second << "\n";
  }
}

char *parse(char *line) {
  char *codePtr = line, *codeEnd = line;
  while (strchr("\t ", *codePtr) != NULL) codePtr++;
  while (*codeEnd != '\0' && strchr("/\n\r", *codeEnd) == NULL) codeEnd++;
  *codeEnd = '\0';
  return codePtr;
}

void pass1(char *inFile) {
  printf("============= PASS1 ================\n");
  char line[100]="";
  FILE *fp = fopen(inFile, "r");
  int address = 0;
  while (fgets(line, sizeof(line), fp)) {
    char *code = parse(line);
    if (strlen(code)==0) continue;
    printf("%02d:%s\n", address, code);
    if (code[0] == '(') {
      char label[100];
      sscanf(code, "(%[^)])", label);
      string lab(label);
      if (symMap.find(lab) == symMap.end())
         symMap[lab] = address; // 記住符號位址，給 pass2 編碼時使用
      else
         printf("error: %s already defined before !", label);
      printf("symbol:%s address=%d\n", label, address);
    } else {
      address ++;
    }
  }
  fclose(fp);
}

char *int2bin(int a, char *bin, int size) {
    bin += size;
    *bin-- = '\0';
    for (int i = size; i > 0; i--) {
        *bin-- = (a & 1) + '0';
        a >>= 1;
    }
    return bin;
}

int bin2int(char *bin) {
  return (int) strtol(bin, NULL, 2);
}

void code2binary(char *code, char *binary) {
  if (code[0]=='@') { // A 指令： ＠number || @symbol
    int address;
    int match = sscanf(code, "@%d", &address);
    if (match == 1)
      int2bin(address, binary, 16);
    else {
      char symbol[100];
      match = sscanf(code, "@%s", symbol);
      string sym(symbol);
      auto it = symMap.find(sym);
      if (it == symMap.end()) { // 宣告變數
        symMap[sym] = varTop; // 新增一個變數
        address = varTop++;
      } else { // 已知變數 (標記) 位址
        address = it->second; // 取值。
      }
      int2bin(address, binary, 16);
    }
  } else { // C 指令
    char d[10], comp[100], j[10];
    string dcode, ccode, jcode;
    if (strchr(code, '=') != NULL) { // d=comp
      sscanf(code, "%[^=]=%s", d, comp);
      string ds(d), comps(comp);
      dcode = dMap[ds];
      ccode = cMap[comps];
      sprintf(binary, "111%s%s000", ccode.c_str(), dcode.c_str());
    } else {
      sscanf(code, "%[^;];%s", comp, j); // comp;j
      string comps(comp), js(j);
      ccode = cMap[comps];
      jcode = jMap[js];
      sprintf(binary, "111%s000%s", ccode.c_str(), jcode.c_str());
    }
  }
}

void pass2(char* inFile, char* hackFile, char* binFile) {
  printf("============= PASS2 ================\n");
  char line[100], binary[17];
  FILE *fp = fopen(inFile, "r"); // 開啟組合語言檔
  FILE *hfp = fopen(hackFile, "w"); // 開啟輸出的 .hack 二進位字串檔案
  FILE *bfp = fopen(binFile, "wb"); // 開啟輸出的 .bin 二進位檔
  int address = 0;
  while (fgets(line, sizeof(line), fp)) { // 一行一行讀
    char *code = parse(line); // 取得該行的程式碼部分
    if (strlen(code)==0) continue;
    if (line[0] == '(') { // 這行是符號 ex: (LOOP)
      printf("%s\n", line); // 印出該符號
    } else {
      code2binary(code, binary); // 將指令編碼為二進位字串 string
      uint16_t b = bin2int(binary); // 將二進位字串 string 轉成 int16
      printf("%02X: %-20s %s %04x\n", address, code, binary, b);
      fprintf(hfp, "%s\n", binary); // 輸出 .hack 的二進位字串檔
      fwrite(&b, sizeof(b), 1, bfp); // 輸出 .bin 的二進位檔
      address ++;
    }
  }
  fclose(fp);
  fclose(hfp);
  fclose(bfp);
}

void assemble(char *file) {
  char inFile[100], hackFile[100], binFile[100];
  sprintf(inFile, "%s.asm", file);
  sprintf(hackFile, "%s.hack", file);
  sprintf(binFile, "%s.bin", file);
  // symDump(&symMap);
  pass1(inFile);
  // symDump(&symMap);
  pass2(inFile, hackFile, binFile);
}
// run: ./asm <file> 
// notice : <file> with no extension.
int main(int argc, char *argv[]) {
  assemble(argv[1]);
}
