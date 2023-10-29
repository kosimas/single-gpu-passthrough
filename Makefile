# Makefile for plasma-sgp

# Compiler and compiler flags
CXX = g++
CXXFLAGS = -std=c++11

# Executable name
TARGET = build/plasma-sgp

# Source files
SRC = plasma-sgp.cpp

# Object files (automatically generated)
OBJ = $(patsubst %.cpp,build/%.o,$(SRC))

# Directory containing the header file
INCLUDE_DIR = /usr/include/kworkspace5

# Libraries to link against
LIBS = -lkworkspace5

# Build target
all: build_folder $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJ) -L/usr/lib $(LIBS)

# Compile source files to object files
build/%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@ -I$(INCLUDE_DIR)

build_folder:
	mkdir -p build

# Clean up the generated files
clean:
	rm -rf build
