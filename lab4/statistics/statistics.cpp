#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <algorithm>
#include <cmath>
#include <iostream>
#include <numeric>
#include <vector>

#include "../doctest.h"

struct Statistics {
  double mean{};
  double sigma{};
  double mean_err{};
  double median{};
};

class Sample {
  std::vector<double> entries_{};

 public:
  void add(double x) { entries_.push_back(x); }

  Statistics statistics() const {
    struct Sums {
      double x{};
      double x2{};
    };
    auto sums_fold = [](Sums s, double x) {
      return Sums{s.x + x, s.x2 + x * x};
    };
    Sums sum = std::accumulate(entries_.begin(), entries_.end(), Sums{}, sums_fold);

    const int N = entries_.size();
    const double mean = sum.x / N;
    const double sigma = std::sqrt((sum.x2 - mean * mean * N) / (N - 1));
    const double mean_err = sigma / std::sqrt(N);

    auto entries{entries_};
    std::sort(entries.begin(), entries.end());
    const double median{(entries[N / 2] + entries[(N - 1) / 2]) / 2};

    return {mean, sigma, mean_err, median};
  }

  int size() { return entries_.size(); }

  bool remove(double x) {
    auto it = std::find(entries_.begin(), entries_.end(), x);
    if (it == entries_.end()) {
      return false;
    } else {
      entries_.erase(it);
      return true;
    }
  }

  const auto& entries() const { return entries_; }

  Sample& operator+=(const Sample& r) {
    for (auto const& e : r.entries()) {
      this->add(e);
    }
    return *this;
  }
};

/*
vecchia funzione che non usa l'operatore +=
Sample operator+(const Sample& l, const Sample& r) {
  Sample sample{l};
  for (auto const& e : r.entries()) {
    sample.add(e);
  }
  return sample;
}
*/

Sample operator+(const Sample& l, const Sample& r) {
  Sample tmp{l};
  tmp += r;
  return tmp;
}

TEST_CASE("Testing the class handling a floating point data sample") {
  Sample sample;

  REQUIRE(sample.size() == 0);

  SUBCASE("Testing statistics") {
    sample.add(1.0);
    sample.add(2.0);

    auto result = sample.statistics();
    CHECK(result.mean == doctest::Approx(1.5));
    CHECK(result.sigma == doctest::Approx(0.70710678));
    CHECK(result.mean_err == doctest::Approx(0.5));
    CHECK(result.median == doctest::Approx(1.5));
  }

  SUBCASE("Testing statistics - pt 2") {
    sample.add(1.0);
    sample.add(2.0);
    sample.add(3.0);

    auto result = sample.statistics();
    CHECK(result.mean == doctest::Approx(2.0));
    CHECK(result.sigma == doctest::Approx(1.0));
    CHECK(result.mean_err == doctest::Approx(0.5773502));
    CHECK(result.median == doctest::Approx(2.0));
  }

  SUBCASE("Removing an existing point") {
    sample.add(1.5);
    sample.add(2.0);
    CHECK(sample.remove(2.0) == true);
    CHECK(sample.size() == 1);
  }

  SUBCASE("Removing a non existing point") {
    sample.add(1.5);
    sample.add(2.0);
    CHECK(sample.remove(1.9) == false);
    CHECK(sample.size() == 2);
  }

  SUBCASE("Testing sum operator") {
    sample.add(1);
    Sample sample_two;
    sample_two.add(2);
    auto sum = sample + sample_two;
    CHECK(sum.size() == 2);
    if (sum.size() == 2) {
      CHECK(sum.entries()[0] == doctest::Approx(1.0));
      CHECK(sum.entries()[1] == doctest::Approx(2.0));
    }
  }
}