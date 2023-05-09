#include "chain.hpp"

#include <iostream>

ParticleState Chain::solve(ParticleState const& ps, double f,
                           double delta_t) const {
  ParticleState new_ps = ps;
  double a = f / ps.m;
  std::cout << new_ps.x << "\n";
  new_ps.x += ps.v * delta_t + 0.5 * a * delta_t * delta_t;
  new_ps.v += a * delta_t;
  return new_ps;
}

Chain::Chain(Hooke const& inter) : m_inter(inter) {}

void Chain::push_back(ParticleState const& ps) { m_particle_states.push_back(ps); }

int Chain::size() const { return m_particle_states.size(); }

void Chain::evolve(double delta_t) {
    std::vector<double> forces{};
    for (int i = 0; i < this->size(); i++) {
        forces.push_back(0.);
        if (i > 0) {
            forces.back() += m_inter(m_particle_states[i], m_particle_states[i-1]);
        } 
        if (i < this->size() - 1) {
            forces.back() += m_inter(m_particle_states[i], m_particle_states[i+1]);
        }
    }

    for (int i = 0; i < this->size(); i++) {
        m_particle_states[i] = solve(m_particle_states[i], forces[i], delta_t);
    }
}

std::vector<ParticleState> const& Chain::state() const { return m_particle_states; }

std::ostream& operator<<(std::ostream& stream, Chain const& ch) {
    stream << "{\n";
    for (const auto& ps: ch.state()) {
        stream << "\t" << ps << "\n";
    }
    stream << "}";
    return stream;
}
