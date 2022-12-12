#include <iostream>
#include <random>

int main() {
    double inf{}, sup{};
    int N;
    std::cin >> inf >> sup >> N;

    std::random_device rd;
    std::default_random_engine gen(rd());
    std::uniform_real_distribution<double> dist(inf, sup);
    for (int i = 0; i < N; i++) {
        std::cout << dist(gen) << " " << dist(gen) << "\n";
    }
}