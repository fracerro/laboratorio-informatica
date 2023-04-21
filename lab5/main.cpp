#include "statistics.hpp"
#include <iostream>
#include <vector>

std::vector<std::string> split(std::string S, char C) {
    std::vector<std::string> res;
    int i = 0;
    while (i < S.size()) {
        if (S[i] != C) {
            int j = 1;
            while (i + j < S.size() && S[i + j] != C) {j++;}
            res.push_back(S.substr(i, j));
            i += j;
        } else {
            i++;
        }
    }
    return res;
}

enum STATE {OK, ERR, QUIT};

STATE evaluate_input(std::vector<std::string> &input, pf::Sample &sample) {
    if (input.empty()) {return ERR;}

    if (input[0] == "a") {
        if (input.size() != 2) return ERR;
        sample.add(std::stod(input[1]));
        return OK;
    } else if (input[0] == "r") {
        if (input.size() != 2) return ERR;
        sample.remove(std::stod(input[1]));
        return OK;
    } else if (input[0] == "c") {
        if (input.size() != 1) return ERR;
        auto res = sample.statistics();
        std::cout << res.mean << " " << res.mean_err << " " << res.median << " " << res.sigma << "\n";
        return OK;
    } else if (input[0] == "q") {
        if (input.size() != 1) return ERR;
        return QUIT;
    } else {
        return ERR;
    }
}

int main() {
    pf::Sample sample;

    while (true) {
        std::string input;
        std::cin >> input;
        auto splitted = split(input, ' ');
        auto output = evaluate_input(splitted, sample);
        if (output == QUIT) {
            break;
        } else if (output == ERR) {
            std::cout << "errore\n";
        }
    }
    return 0;
}