#ifndef STATISTICS_HPP
#define STATISTICS_HPP

#include <vector>

namespace pf {
  struct Statistics {
    double mean{};
    double sigma{};
    double mean_err{};
    double median{};
  };

  class Sample {
    std::vector<double> entries_{};

  public:
    void add(double x);

    Statistics statistics() const;

    int size();

    bool remove(double x);

    const auto& entries() const { return entries_; }

    Sample& operator+=(const Sample& r);
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

  Sample operator+(const Sample& l, const Sample& r);
}

#endif