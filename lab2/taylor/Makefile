all: format compile run

format:
	clang-format -i taylor.cpp

compile:
	g++ taylor.cpp -o taylor -Wall -Wextra

run:
	./taylor

clean:
	rm taylor
