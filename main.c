#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "start.h"
#include "pause.h"
#include "win.h"
#include "lose.h"
#include "game.h"

//prototypes
void initialize();

//state prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum {START, PAUSE, GAME, WIN, LOSE};
int state;

//buttons
unsigned short buttons;
unsigned short oldButtons;

//random seed
int seed;



int main() {

    initialize(); 

	while(1) {

		// Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

		//state machine
		switch(state) {
            case START:
                start();
                break;
            case PAUSE:
                pause();
                break;
            case GAME:
                game();
                break;
            case WIN:
                win();
                break;
			case LOSE:
				lose();
				break;
        }


		waitForVBlank();

        //Copy the shadowOAM into the OAM
		DMANow(3, shadowOAM, OAM, 128*4);

	}

	return 0;
}


void initialize() {


    //hide all the sprites
	hideSprites();
    
	//set up register display controller
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
	
    buttons = BUTTONS;

	goToStart();
}

void goToStart() {
	// load the start tile palette
	DMANow(3, startPal, PALETTE, 256);
	
	//set up 0 control register
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

	//load start tiles into charblock
	DMANow(3, startTiles, &CHARBLOCK[0], 752);

	//load start map to screenblock
	DMANow(3, startMap, &SCREENBLOCK[31], 1024);

	state = START;

	//begin seed randomization
	seed = 0;
}


void start() {

	seed++;

	if (BUTTON_PRESSED(BUTTON_START)) {
		//seed random number generator
		srand(seed);

		initializeGame();
		goToGame();
	}
}

void goToGame() {
	state = GAME;
}

void game() {

	updateGame();
	drawGame();

	//switching states
	if (BUTTON_PRESSED(BUTTON_START)) {
		goToPause();
	}
	if (enemiesRemaining == 0) {
		goToWin();
	}
	if (livesRemaining == 0) {
		goToLose();
	}

}

void goToPause() {
	// load the pause tile palette
	DMANow(3, pausePal, PALETTE, 256);

	//hide sprites
	hideSprites();

	//load pause tiles into charblock
	DMANow(3, pauseTiles, &CHARBLOCK[0], 688);

	//load pause map to screenblock
	DMANow(3, pauseMap, &SCREENBLOCK[31], 1024);

	state = PAUSE;
}

void pause() {

	if (BUTTON_PRESSED(BUTTON_START)) {
		goToGame();
	}
}


void goToWin() {
	//hide sprites
	hideSprites();

	//set up 0 control register
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

	// load the win tile palette
	DMANow(3, winPal, PALETTE, 256);

	//load win tiles into charblock
	DMANow(3, winTiles, &CHARBLOCK[0], 1808);

	//load win map to screenblock
	DMANow(3, winMap, &SCREENBLOCK[31], 1024);

	state = WIN;
}

void win() {
	if (BUTTON_PRESSED(BUTTON_START)) {
		goToStart();
	}
}

void goToLose() {
	//hide sprites
	hideSprites();

	//set up 0 control register
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

	// load the lose tile palette
	DMANow(3, losePal, PALETTE, 256);

	//load win tiles into charblock
	DMANow(3, loseTiles, &CHARBLOCK[0], 2592);

	//load win map to screenblock
	DMANow(3, loseMap, &SCREENBLOCK[31], 1024);

	state = LOSE;
}

void lose() {
	if (BUTTON_PRESSED(BUTTON_START)) {
		goToStart();
	}
}