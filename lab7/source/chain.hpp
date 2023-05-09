#ifndef CHAIN_HPP
#define CHAIN_HPP

#include <vector>

#include "hooke.hpp"

class Chain {
  Hooke m_inter;
  std::vector<ParticleState> m_particle_states{};

  ParticleState solve(ParticleState const&, double, double) const;

 public:
  Chain(Hooke const&);
  void push_back(ParticleState const&);
  int size() const;

  void evolve(double);
  std::vector<ParticleState> const& state() const;
};

std::ostream& operator <<(std::ostream& stream, Chain const&);

#endif
