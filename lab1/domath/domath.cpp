#include <iostream>

int main() {
  int a, b;
  std::cout << "Inserisci il primo numero: ";
  std::cin >> a;
  std::cout << "Inserisci il secondo numero: ";
  std::cin >> b;

  std::cout << "La somma di " << a << " e " << b << " è: " << a + b << "\n";

  if (a % b == 0) {
    std::cout << a << " è multiplo di " << b << "\n";
  } else {
    std::cout << a << " non è multiplo di " << b << "\n";
  }
}
