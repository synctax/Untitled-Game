IDIR=../include
CC=g++
CFLAGS=-g -std=c++11 -I $(IDIR)

ODIR=obj

LIBS=-framework OpenGL -lglfw -lGLEW

EXEC=../lib/Engine.o

COMPDIR=Components
COMPS=Camera Collider Renderable Transform
_DEPS= Game GameObject ShaderProgram VAO WindowEventManager CollideableManager Component OBJLoader Window
DEPS=$(patsubst %, $(IDIR)/%.hpp, $(_DEPS) $(COMPS))
OBJ=$(patsubst %, $(ODIR)/%.o, $(_DEPS)) $(patsubst %, $(COMPDIR)/obj/%.o, $(COMPS))

$(ODIR)/%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

$(COMPDIR)/obj/%.o: $(COMPDIR)/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(EXEC): $(OBJ) 
	ld -r -v -o $@ $^
	@echo $^

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o
	rm $(EXEC)
	rm -f $(COMPDIR)/obj/*.o
