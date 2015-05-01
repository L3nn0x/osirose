CC = g++

INC = -I. -I../Common

EXE = char_server

SRC = $(wildcard *.cpp) $(wildcard ../Common/*.cpp) $(wildcard ../Common/database/*.cpp)

LIBMYSQL = $(shell mysql_config --libs)

FLAGSMYSQL = $(shell mysql_config --cflags) -g

$(EXE):
	$(CC) $(FLAGSMYSQL) $(LIBMYSQL) $(INC) -o$(EXE) $(SRC)

clean:
	rm $(EXE)

re: clean $(EXE)
