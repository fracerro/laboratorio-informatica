all: format compile run

format:
	clang-format -i statistics.cpp

compile:
	g++ statistics.cpp -o statistics -Wall -Wextra

run:
	./statistics

clean:
	rm statistics
