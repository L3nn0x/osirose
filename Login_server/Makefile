include ../Makefile.common

INC += -I$(LOGINDIR)/include

EXE = $(LOGINEXE)

SRCDIR = $(LOGINDIR)/src

OBJDIR = $(LOGINDIR)/obj

SRC = $(wildcard $(SRCDIR)/*.cpp)

OBJ = $(subst $(SRCDIR), $(OBJDIR), $(SRC:.cpp=.o))

all:
	@echo $(INC)

$(EXE): $(OBJ)
	$(CC) $^ -o $@ $(LDFLAGS)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(EXE)

re: fclean all

include $(OBJ:.o:.d)

%.d: %.cpp
	$(CC) $(CFLAGS) $(INC) -MM $^ > $@

$(OBJDIR)/%.o:$(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) $(INC) -o $@ -c $<
