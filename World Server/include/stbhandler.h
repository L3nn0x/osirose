// Written by Brett19
#include "worldserver.h"

struct CSTBData {
	unsigned rowcount;
	unsigned fieldcount;
	int** rows;
};

int STBStoreData( const char* filename, CSTBData* data );
void STBFreeData( CSTBData* data );
