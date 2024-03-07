RM = rm
CXX = g++
CXXSET = -std=c++20
INCLUDE = include
LIB = -lstdc++

Object = src/main.o \
		 

%.o: %.cpp
	$(CXX) $(CXXSET) -I$(INCLUDE) -c $< -o $@

clean:
	$(RM) $(Object)

CP1Y1: $(Object)
	$(CXX) $^ -o $@ $(LIB)