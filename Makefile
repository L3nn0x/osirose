login:
	$(MAKE) -C Login\ Server

char:
	$(MAKE) -C Char\ Server

world:
	$(MAKE) -C World\ Server

all: login char world
	cp Login\ Server/login_server Binary/
	cp Char\ Server/char_server Binary/
	cp World\ Server/world_server Binary/

re:
	$(MAKE) -C Login\ Server re
	$(MAKE) -C Char\ Server re
	$(MAKE) -C World\ Server re
	cp Login\ Server/login_server Binary/
	cp Char\ Server/char_server Binary/
	cp World\ Server/world_server Binary/
