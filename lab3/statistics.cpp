#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <cmath>

#include "doctest.h"

struct Statistics {
  double mean{};
  double sigma{};
  double mean_err{};
};

class Sample {
  double sum_x_{};
  double sum_x2_{};
  int N_{};

 public:
  void add(double x) {
    sum_x_ += x;
    sum_x2_ += x * x;
    N_++;
  }

  Statistics statistics() const {
    double mean = sum_x_ / N_;
    // double sigma = std::sqrt(sum_x2_ / N_ - mean * mean); vecchia funzione
    // sigma
    double sigma = std::sqrt(((sum_x2_ / N_ - mean * mean) * N_) / (N_ - 1));
    double mean_err = sigma / std::sqrt(N_);

    return {mean, sigma, mean_err};
  }
};

TEST_CASE("Testing the class handling a floating point data sample") {
  Sample sample;

  sample.add(1.0);
  sample.add(2.0);

  auto result = sample.statistics();
  CHECK(result.mean == doctest::Approx(1.5));
  // CHECK(result.sigma == doctest::Approx(0.5)); vecchia funzione sigma
  CHECK(result.sigma == doctest::Approx(0.70710678));
  // CHECK(result.mean_err == doctest::Approx(0.35355339)); vecchia funzione
  // sigma
  CHECK(result.mean_err == doctest::Approx(0.5));
}