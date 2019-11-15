IDIR=../include
ENGINC=../../Engine/include
CC=g++
CFLAGS= -std=c++11 -I $(IDIR) -I $(ENGINC) 

LIBS=../../Engine/lib/Engine.o -lGLEW -lglfw -framework OpenGL

COMPS= FirstPersonController PlayerController
COMPDIR=Components

DEPS=$(patsubst %, $(IDIR)/%.hpp, $(COMPS))
OBJ=$(patsubst %, $(COMPDIR)/obj/%.o, $(COMPS))

$(COMPDIR)/obj/%.o: $(COMPDIR)/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

Game: main.o MyGame.o $(OBJ)
	$(CC) -o $@ $^ $(LIBS)

main.o: main.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

MyGame.o: MyGame.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

.PHONY: clean

clean:
	rm main.o MyGame.o Game
	rm -f $(COMPDIR)/obj/*.o 

