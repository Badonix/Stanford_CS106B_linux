#include "./StanfordCPPLib/console.h"
#include "./StanfordCPPLib/simpio.h"
#include <iostream>
#include <string>
using namespace std;

int main() {
  string name = getLine("Please enter your name: ");
  cout << name;
  return 0;
}
