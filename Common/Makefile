include ../Makefile.common

all: $(COMMONOBJ)

clean:
	$(RM) $(COMMONOBJ)

fclean: clean

re: fclean all

include $(SRC:.cpp:.d)

%.d: %.cpp
	$(CC) $(CFLAGS) $(INC) -MM $^ > $@

$(COMMONDIR)/obj/%.o: $(COMMONDIR)/src/%.cpp
	$(CC) $(CFLAGS) $(INC) -o $@ -c $<
