#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <cmath>

#include "../doctest.h"

struct Coefficients {  // y = A + B * x
  double A{};
  double B{};
};

class Sample {
  double sum_x_{};
  double sum_x2_{};
  double sum_y_{};
  double sum_xy_{};
  int N_{};

 public:
  void add(double x, double y) {
    sum_x_ += x;
    sum_x2_ += x * x;
    sum_y_ += y;
    sum_xy_ += x * y;
    N_++;
  }

  Coefficients coefficients() const {
    double A = (sum_y_ * sum_x2_ - sum_x_ * sum_xy_) /
               (N_ * sum_x2_ - sum_x_ * sum_x_);
    double B =
        (N_ * sum_xy_ - sum_x_ * sum_y_) / (N_ * sum_x2_ - sum_x_ * sum_x_);
    return {A, B};
  }
};

TEST_CASE("Testing the class handling a floating point data sample") {
  Sample sample;

  sample.add(1.0, 1.0);
  sample.add(2.0, 3.0);
  sample.add(3.0, 2.0);

  auto result = sample.coefficients();
  CHECK(result.A == doctest::Approx(1.0));
  CHECK(result.B == doctest::Approx(0.5));
}