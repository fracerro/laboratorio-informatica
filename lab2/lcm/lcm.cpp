#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN

#include <utility>  // swap

#include "../doctest.h"

int lcm(int a, int b) {
  if (a == 0 || b == 0) return 0;
  a = std::abs(a);
  b = std::abs(b);

  if (b > a) {
    std::swap(a, b);
  }

  int result = a;
  while (result % b != 0) {
    result += a;
  }
  return result;
}

TEST_CASE("Testing the lcm function") {
  CHECK(lcm(12, 16) == 48);
  CHECK(lcm(0, 3) == 0);
  CHECK(lcm(12, -16) == 48);
}
