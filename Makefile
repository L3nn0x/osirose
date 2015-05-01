include Makefile.common

DIREXE = $(PREFIX)/Binary

all: common login char world

login:
	$(MAKE) -C $(LOGINDIR)

char:
	$(MAKE) -C $(CHARDIR)

world:
	$(MAKE) -C $(WORLDDIR)

common:
	$(MAKE) -C $(COMMONDIR)

copy:
	cp $(WORLDDIR)/$(WORLDEXE) $(DIREXE)/$(WORLDEXE)
	cp $(CHARDIR)/$(CHAREXE) $(DIREXE)/$(CHAREXE)
	cp $(LOGINDIR)/$(LOGINEXE) $(DIREXE)/$(LOGINEXE)

clean:
	$(MAKE) -C $(WORLDDIR) $@
	$(MAKE) -C $(CHARDIR) $@
	$(MAKE) -C $(LOGINDIR) $@
	$(MAKE) -C $(COMMONDIR) $@

fclean:
	$(MAKE) -C $(WORLDDIR) $@
	$(MAKE) -C $(CHARDIR) $@
	$(MAKE) -C $(LOGINDIR) $@
	$(MAKE) -C $(COMMONDIR) $@
	$(RM) -f $(DIREXE)/$(WORLDEXE)
	$(RM) -f $(DIREXE)/$(CHAREXE)
	$(RM) -f $(DIREXE)/$(LOGINEXE)

re: fclean all
