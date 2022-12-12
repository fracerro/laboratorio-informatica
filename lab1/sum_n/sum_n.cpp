#include <iostream>

int main() {
  int a, b;
  std::cout << "Inserisci il limite inferiore: ";
  std::cin >> a;
  if (std::cin.fail()) {
    exit(0);
  }
  std::cout << "Inserisci il limite superiore: ";
  std::cin >> b;
  if (std::cin.fail()) {
    exit(0);
  }

  int somma_a = (a * (a - 1)) / 2;
  int somma_b = (b * (b + 1)) / 2;
  int somma = somma_b - somma_a;
  std::cout << "La somma numeri interi da " << a << " a " << b << " è " << somma
            << "\n";
}
