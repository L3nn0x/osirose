include ../Makefile.common

INC += -I$(WORLDDIR)/include

EXE = $(WORLDEXE)

SRCDIR = $(WORLDDIR)/src

OBJDIR = $(WORLDDIR)/obj

SRC = $(wildcard $(SRCDIR)/*.cpp) $(wildcard $(SRCDIR)/aip/*.cpp) $(wildcard $(SRCDIR)/quest/*.cpp)

OBJ = $(subst $(SRCDIR), $(OBJDIR), $(SRC:.cpp=.o))

all: common $(EXE)

common:
	$(MAKE) -C $(COMMONDIR) $(COMMONOBJ)

$(EXE): $(OBJ)
	$(CC) $^ $(COMMONOBJ) -o $@ $(LDFLAGS)

clean:
	$(RM) $(OBJ)
	$(MAKE) -C $(COMMONDIR) $@

fclean: clean
	$(RM) $(EXE)

re: fclean all

include $(SRC:.cpp:.d)

%.d: %.cpp
	$(CC) $(CFLAGS) $(INC) -MM $^ > $@

$(OBJDIR)/%.o:$(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) $(INC) -o $@ -c $<
