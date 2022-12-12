#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN

#include <cmath>

#include "../doctest.h"

int factorial(int n) {
  if (n < 0) return -1;
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

double taylor(double x, int N) {
  if (N < 0) return -1.;

  double result = 0.;
  for (int n = 0; n <= N; n++) {
    double term = std::pow(x, 2 * n) / factorial(2 * n);
    if (n % 2 == 0) {
      result += term;
    } else {
      result -= term;
    }
  }
  return result;
}

TEST_CASE("Testing the factorial function") {
  CHECK(factorial(-1) == -1);
  CHECK(factorial(-2) == -1);
  CHECK(factorial(0) == 1);
  CHECK(factorial(1) == 1);
  CHECK(factorial(5) == 120);
}

TEST_CASE("Testing the taylor function") {
  CHECK(taylor(0.5, 1) == doctest::Approx(0.875));
  CHECK(taylor(0.5, 2) == doctest::Approx(0.877).epsilon(0.001));
  CHECK(taylor(0.5, 3) == doctest::Approx(0.877).epsilon(0.001));
}
