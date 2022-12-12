all: format compile run

format:
	clang-format -i lcm.cpp

compile:
	g++ lcm.cpp -o lcm -Wall -Wextra

run:
	./lcm

clean:
	rm lcm
