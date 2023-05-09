#include "hooke.hpp"

#include <cmath>

std::ostream& operator <<(std::ostream &stream, const ParticleState& ps) {
  stream << "[" << ps.m << ", " << ps.x << ", " << ps.v << "]";
  return stream;
}

Hooke::Hooke(double k, double l) : m_k(k), m_l(l) {}

double Hooke::operator()(ParticleState const& p1,
                         ParticleState const& p2) const {
  double f = (std::fabs(p2.x - p1.x) - m_l) * m_k;
  if (p2.x - p1.x < 0.) { f *= -1.; }
  return f;
}
