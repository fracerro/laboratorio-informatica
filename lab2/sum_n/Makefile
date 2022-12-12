all: format compile run

format:
	clang-format -i sum_n.cpp

compile:
	g++ sum_n.cpp -o sum_n -Wall -Wextra

run:
	./sum_n

clean:
	rm sum_n
