# Change all occurences of Fiso with your file name
# for example if your file name is main, replace all (Fiso) with (main)

PROGRAM = Fiso
OBJECTS = Fiso.o

CPPOPTIONS = -IStanfordCPPLib -fvisibility-inlines-hidden
LDOPTIONS = -L.
LIB = -lStanfordCPPLib

all: $(PROGRAM)

Fiso: $(OBJECTS)
	g++ -o $(PROGRAM) $(LDOPTIONS) $(OBJECTS) $(LIB)

Fiso.o: Fiso.cpp Makefile libStanfordCPPLib.a
	g++ -c $(CPPOPTIONS) Fiso.cpp

libStanfordCPPLib.a:
	@rm -f libStanfordCPPLib.a
	(cd StanfordCPPLib; make all)
	ln -s StanfordCPPLib/libStanfordCPPLib.a .


tidy:
	rm -f ,* .,* *~ core a.out *.err

clean scratch: tidy
	rm -f *.o *.a $(PROGRAM)
