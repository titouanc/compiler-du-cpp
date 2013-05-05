#Compilateur C++
CXX = g++
#Flags C++
CXXFLAGS = -x c++ -pedantic -Wall -Wextra -O3

#Executables finaux
TARGETS = main mainProjLang
#Fichiers objets necessaires aux executables finaux
OBJECTS = Tree.o SplitGame.o

all: ${TARGETS}
% : %.cpp

#Compilation d'un executable avec les objets
% : %.o ${OBJECTS}
	${CXX} -o $@ $^

#Efface les fichiers objets
.PHONY : clean
clean:
	rm -f *.o 

#Efface tous les produits de compilation
mrproper: clean
	rm -f ${TARGETS}
