#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN

#include "../doctest.h"

int sum_n(int n) { return n < 0 ? -1 : n * (n + 1) / 2; }

TEST_CASE("Testing the sum_n function") {
  CHECK(sum_n(9) == 45);
  CHECK(sum_n(10) == 55);
  CHECK(sum_n(0) == 0);
  CHECK(sum_n(-1) == -1);
  CHECK(sum_n(-3) == -1);
}
