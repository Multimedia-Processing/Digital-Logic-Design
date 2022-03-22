#include <iostream> 
#include <map> 

using namespace std;

map<string, string> dMap {
  {"", "000"}, {"M", "001"}, {"D", "010"}, {"MD", "011"},
  {"A","100"}, {"AM","101"}, {"AD","110"}, {"AMD","111"}
};

int main() {
  cout << "AD=" << dMap["AD"];
}
