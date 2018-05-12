CXX=clang++-5.0
CXXFLAGS=-std=c++17

all: Board.o Cell.o OurException.o

Board.o: Board.cpp Cell.cpp OurException.cpp Board.h Cell.h OurException.h
	$(CXX) $(CXXFLAGS) --compile Board.cpp -o Board.o
	$(CXX) $(CXXFLAGS) --compile Cell.cpp -o Cell.o
	$(CXX) $(CXXFLAGS) --compile OurException.cpp -o OurException.o

clean:
	rm *.o a.out
