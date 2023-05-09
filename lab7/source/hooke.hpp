#ifndef HOOKE_HPP
#define HOOKE_HPP

#include <ostream>

struct ParticleState {
  double m{};
  double x{};
  double v{};
};

std::ostream& operator <<(std::ostream &, ParticleState const&);

class Hooke {
  double m_k;
  double m_l;

 public:
  Hooke(double, double);
  double operator()(ParticleState const&, ParticleState const&) const;
};

#endif
