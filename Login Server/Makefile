include ../Makefile.common

INC += -I$(LOGINDIR)/include

EXE = $(LOGINEXE)

SRCDIR = $(LOGINDIR)/src

OBJDIR = $(LOGINDIR)/obj

SRC = $(wildcard $(SRCDIR)/*.cpp)

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
