all: format compile run

format:
	clang-format -i regression.cpp

compile:
	g++ regression.cpp -o regression -Wall -Wextra

run:
	./regression

clean:
	rm regression
