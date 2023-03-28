#include "statistics.hpp"

#include <algorithm>
#include <cmath>
#include <numeric>

namespace pf {
    void Sample::add(double x) { entries_.push_back(x); }

    int Sample::size() { return entries_.size(); }

    bool Sample::remove(double x) {
        auto it = std::find(entries_.begin(), entries_.end(), x);
        if (it == entries_.end()) {
            return false;
        } else {
            entries_.erase(it);
            return true;
        }
    }

    Sample& Sample::operator+=(const Sample& r) {
      for (auto const& e : r.entries()) {
        this->add(e);
      }
      return *this;
    }

    Statistics Sample::statistics() const {
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

    Sample operator+(const Sample& l, const Sample& r) {
        Sample tmp{l};
        tmp += r;
        return tmp;
    }
}