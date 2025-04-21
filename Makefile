CXX = g++
CXXFLAGS = -std=c++11 -Wall -Iinc
TARGET = Lab07
SOURCES = main.cpp src/Cylinder.cpp
OBJECTS = $(SOURCES:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(TARGET)

%.o: %.cpp inc/Cylinder.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf *.o src/*.o $(TARGET)

.PHONY: all clean
