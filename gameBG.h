
//{{BLOCK(gameBG)

//======================================================================
//
//	gameBG, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 1 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 32 + 2048 = 2112
//
//	Time-stamp: 2019-10-24, 12:26:05
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBG_H
#define GRIT_GAMEBG_H

#define gameBGTilesLen 32
extern const unsigned short gameBGTiles[16];

#define gameBGMapLen 2048
extern const unsigned short gameBGMap[1024];

#define gameBGPalLen 32
extern const unsigned short gameBGPal[16];

#endif // GRIT_GAMEBG_H

//}}BLOCK(gameBG)
