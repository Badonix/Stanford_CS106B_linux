#include "./StanfordCPPLib/console.h"
#include "./StanfordCPPLib/simpio.h"
#include <iostream>
#include <string>
using namespace std;

int main() {
  float weight = getReal("Please enter your weight: ");
  cout << weight << endl;
  return 0;
}
