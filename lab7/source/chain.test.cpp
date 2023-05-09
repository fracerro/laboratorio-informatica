#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN

#include "doctest.h"
#include "chain.hpp"

#include <iostream>

TEST_CASE("Testing evolve method") {
    Chain ch{Hooke{0.1, 2.}};

    SUBCASE("2 particles") {
        ch.push_back({1., 0., 0.});
        ch.push_back({1., 4., 0.});

        ch.evolve(1.0);
        const auto state_f = ch.state();
        std::cout << ch << "\n";

        CHECK(state_f[0].x == doctest::Approx(0.1));
        CHECK(state_f[0].v == doctest::Approx(0.2));
        CHECK(state_f[1].x == doctest::Approx(3.9));
        CHECK(state_f[1].v == doctest::Approx(-0.2));

        ch.evolve(1.0);
        std::cout << ch << "\n";
    }

    SUBCASE("3 particles") {
        ch.push_back({1., 0., 0.5});
        ch.push_back({1., 2., 0.});
        ch.push_back({1., 4., 0.});
        ch.evolve(1.0);
        const auto state_f = ch.state();

        CHECK(state_f[0].x == doctest::Approx(0.6));
        CHECK(state_f[0].v == doctest::Approx(0.7));
        CHECK(state_f[1].x == doctest::Approx(2.0));
        CHECK(state_f[1].v == doctest::Approx(0.0));
        CHECK(state_f[2].x == doctest::Approx(3.9));
        CHECK(state_f[2].v == doctest::Approx(-0.2));
    }
}
