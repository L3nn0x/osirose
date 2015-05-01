include ../Makefile.common

INC += -I$(COMMONDIR)/include -I$(COMMONDIR)/include/database

SRCDIR = $(COMMONDIR)/src

OBJDIR = $(COMMONDIR)/obj

SRC = $(wildcard $(SRCDIR)/*.cpp)

OBJ = $(subst $(SRCDIR), $(OBJDIR), $(SRC:.cpp=.o))

all: $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean

re: fclean all

include $(SRC:.o:.d)

$(OBJDIR)/%.d: $(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) $(INC) -MM $^ > $@

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) $(INC) -o $@ -c $<
