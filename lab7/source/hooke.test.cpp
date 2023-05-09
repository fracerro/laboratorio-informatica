#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN

#include "doctest.h"
#include "hooke.hpp"

TEST_CASE("Testing Hooke force") {
  Hooke hooke{2., 10.};

  SUBCASE("Positive force") {
    ParticleState p1{1., 0., 0.};
    ParticleState p2{1., 12., 0.};
    double f = hooke(p1, p2);
    CHECK(f == doctest::Approx(4.));
  }

  SUBCASE("Null force") {
    ParticleState p1{1., 0., 0.};
    ParticleState p2{1., 10., 0.};
    double f = hooke(p1, p2);
    CHECK(f == doctest::Approx(0.));
  }

  SUBCASE("Negative force") {
    ParticleState p1{1., 0., 0.};
    ParticleState p2{1., 8., 0.};
    double f = hooke(p1, p2);
    CHECK(f == doctest::Approx(-4.));
  }
}
