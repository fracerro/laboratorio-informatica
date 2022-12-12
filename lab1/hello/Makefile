all: format compile run

format:
	clang-format -i hello.cpp

compile:
	g++ hello.cpp -o hello -Wall -Wextra

run:
	./hello

clean:
	rm hello
