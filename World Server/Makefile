CC = g++

INC = -I. -I../Common

EXE = world_server

SRC = $(wildcard *.cpp) $(wildcard ../Common/*.cpp) $(wildcard ../Common/database/*.cpp) $(wildcard ./aip/*.cpp) $(wildcard ./quest/*.cpp)

LIBMYSQL = $(shell mysql_config --libs)

FLAGSMYSQL = $(shell mysql_config --cflags)

FLAGS = $(FLAGSMYSQL) -Wno-write-strings -std=c++11 -g

$(EXE):
	$(CC) $(FLAGS) $(LIBMYSQL) $(INC) -o$(EXE) $(SRC)

clean:
	rm $(EXE)

re: clean $(EXE)
