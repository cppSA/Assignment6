CXX=clang++-5.0
CXXFLAGS=-std=c++17 

make: main.cpp Board.o Cell.o OurException.o
	$(CXX) $(CXXFLAGS) main.cpp *.o -o a.out 
	valgrind --tool=memcheck ./a.out

Board.o: Board.cpp Cell.cpp OurException.cpp Board.h Cell.h OurException.h
	$(CXX) $(CXXFLAGS) -c Board.cpp -o Board.o
	$(CXX) $(CXXFLAGS) -c Cell.cpp -o Cell.o
	$(CXX) $(CXXFLAGS) -c OurException.cpp -o OurException.o

clean:
	rm *.o a.out
