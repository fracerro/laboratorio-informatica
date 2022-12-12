all: format compile run

format:
	clang-format -i domath.cpp

compile:
	g++ domath.cpp -o domath -Wall -Wextra

run:
	./domath

clean:
	rm domath
