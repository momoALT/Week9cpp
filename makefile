CXX = g++
CXXFLAGS = -g -Wall -Wextra -Wpedantic
programname : numberconversion.cpp romandigitconverter.o
	$(CXX) $(CXXFLAGS) -o programname romandigitconverter.o
numberconversion.o: numberconversion.cpp numberconversion.h
	$(CXX) $(CXXFLAGS) -c numberconversion.cpp 
romandigitconverter.o: romandigitconverter.cpp numberconversion.o
	$(CXX) $(CXXFLAGS) -c romandigitconverter.cpp numberconversion.o