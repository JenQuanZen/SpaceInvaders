#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "spriteSheet.h"
#include "gameBG.h"

//variables
ANISPRITE ship;
ANISPRITE greenEnemies[ENEMYCOUNT];
ANISPRITE yellowEnemies[ENEMYCOUNT];
ANISPRITE blueEnemies[ENEMYCOUNT];
ANISPRITE yelEnemies[ENEMYCOUNT];
ANISPRITE greEnemies[ENEMYCOUNT];
ANISPRITE shipBullets[BULLETCOUNT];
ANISPRITE enemyBullets[BULLETCOUNT];
int enemiesRemaining;
int livesRemaining;
int bulletTimer;

OBJ_ATTR shadowOAM[128];

void initializeGame() {
    
    //load spritesheet palette and tiles
   	DMANow(3, &spriteSheetPal, SPRITEPALETTE, 256);
	DMANow(3, &spriteSheetTiles, &CHARBLOCK[4], 16384);

    //tell BG0 control reigster where to look for its tiles and map
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    //hide all of the sprites
    hideSprites();

    //initialze number of enemies
    enemiesRemaining = ENEMYCOUNT * 5;

    //initializes ship's lives remaining
    livesRemaining = 3;

    bulletTimer = 30;

    initializeShip();
    initializeEnemies();
    initializeBullets();
    initializeEnemyBullets();
}

void updateGame() {
    updateShip();
    //update all of the bullets
    for (int i = 0; i < BULLETCOUNT; i++) {
        updateBullets(&shipBullets[i]);
        updateEnemyBullets(&enemyBullets[i]);
    }
    //update first row of enemies
    for (int i = 0; i < ENEMYCOUNT; i++) {
        updateEnemies(&greenEnemies[i]);
    }
    //update second row of enemies
    for (int i = 0; i < ENEMYCOUNT; i++) {
        updateEnemies(&yellowEnemies[i]);
    }
    //update third row of enemies
    for (int i = 0; i < ENEMYCOUNT; i++) {
        updateEnemies(&blueEnemies[i]);
    }
    //update fourth row of enemies
    for (int i = 0; i < ENEMYCOUNT; i++) {
        updateEnemies(&yelEnemies[i]);
    }
    //update fifth row of enemies
    for (int i = 0; i < ENEMYCOUNT; i++) {
        updateEnemies(&greEnemies[i]);
    }

}

void drawGame() {
    
    //initialize background
    DMANow(3, gameBGPal, PALETTE, 256);
    DMANow(3, gameBGTiles, &CHARBLOCK[0], 16);
    DMANow(3, gameBGMap, &SCREENBLOCK[31], 1024);

    //set up ship sprite attributes
    shadowOAM[0].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | ship.row;
    shadowOAM[0].attr1 = ATTR1_SMALL | ship.col;
    shadowOAM[0].attr2 = ATTR2_TILEID(2 * ship.aniState, 2 * ship.curFrame) | ATTR2_PALROW(0);

    //set up enemy sprite attribues
    //first row of enemy sprites
    for (int i = 0; i < ENEMYCOUNT; i++) {
        if (greenEnemies[i].active) {
            shadowOAM[1 + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | greenEnemies[i].row;
            shadowOAM[1 + i].attr1 = ATTR1_SMALL | greenEnemies[i].col;
            shadowOAM[1 + i].attr2 = ATTR2_TILEID(2 * greenEnemies[i].aniState, 2 * greenEnemies[i].curFrame) | ATTR2_PALROW(0);
        } else {
            shadowOAM[1 + i].attr0 = ATTR0_HIDE;
        }
    }
    //second row of enemy sprites
    for (int i = 0; i < ENEMYCOUNT; i++) {
        if (yellowEnemies[i].active) {
            shadowOAM[1 + ENEMYCOUNT + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | yellowEnemies[i].row;
            shadowOAM[1 + ENEMYCOUNT + i].attr1 = ATTR1_SMALL | yellowEnemies[i].col;
            shadowOAM[1 + ENEMYCOUNT + i].attr2 = ATTR2_TILEID(2 * yellowEnemies[i].aniState, 2 * yellowEnemies[i].curFrame) | ATTR2_PALROW(0);
        } else {
            shadowOAM[1 + ENEMYCOUNT + i].attr0 = ATTR0_HIDE;
        }
    }
    //third row of enemy sprites
    for (int i = 0; i < ENEMYCOUNT; i++) {
        if (blueEnemies[i].active) {
            shadowOAM[1 + ENEMYCOUNT * 2 + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | blueEnemies[i].row;
            shadowOAM[1 + ENEMYCOUNT * 2 + i].attr1 = ATTR1_SMALL | blueEnemies[i].col;
            shadowOAM[1 + ENEMYCOUNT * 2 + i].attr2 = ATTR2_TILEID(2 * blueEnemies[i].aniState, 2 * blueEnemies[i].curFrame) | ATTR2_PALROW(0);
        } else {
            shadowOAM[1 + ENEMYCOUNT * 2 + i].attr0 = ATTR0_HIDE;
        }
    }
    //fourth row of enemy sprites
    for (int i = 0; i < ENEMYCOUNT; i++) {
        if (yelEnemies[i].active) {
            shadowOAM[1 + ENEMYCOUNT * 3 + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | yelEnemies[i].row;
            shadowOAM[1 + ENEMYCOUNT * 3 + i].attr1 = ATTR1_SMALL | yelEnemies[i].col;
            shadowOAM[1 + ENEMYCOUNT * 3 + i].attr2 = ATTR2_TILEID(2 * yelEnemies[i].aniState, 2 * yelEnemies[i].curFrame) | ATTR2_PALROW(0);
        } else {
            shadowOAM[1 + ENEMYCOUNT * 3 + i].attr0 = ATTR0_HIDE;
        }
    }
    //fifth row of enemy sprites
    for (int i = 0; i < ENEMYCOUNT; i++) {
        if (greEnemies[i].active) {
            shadowOAM[1 + ENEMYCOUNT * 4 + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | greEnemies[i].row;
            shadowOAM[1 + ENEMYCOUNT * 4 + i].attr1 = ATTR1_SMALL | greEnemies[i].col;
            shadowOAM[1 + ENEMYCOUNT * 4 + i].attr2 = ATTR2_TILEID(2 * greEnemies[i].aniState, 2 * greEnemies[i].curFrame) | ATTR2_PALROW(0);
        } else {
            shadowOAM[1 + ENEMYCOUNT * 4 + i].attr0 = ATTR0_HIDE;
        }
    }

    //set up ship bullet sprite attributes
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (shipBullets[i].active) {
            shadowOAM[1 + ENEMYCOUNT * 5 + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL | shipBullets[i].row;
            shadowOAM[1 + ENEMYCOUNT * 5 + i].attr1 = ATTR1_TINY | shipBullets[i].col;
            shadowOAM[1 + ENEMYCOUNT * 5 + i].attr2 = ATTR2_TILEID(shipBullets[i].aniState, 2 * shipBullets[i].curFrame) | ATTR2_PALROW(0);
        } else {
            shadowOAM[1 + ENEMYCOUNT * 5 + i].attr0 = ATTR0_HIDE;
        }
    }
    //set up enemy bullet sprite attributes
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (enemyBullets[i].active) {
            shadowOAM[1 + ENEMYCOUNT * 5 + BULLETCOUNT + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL | enemyBullets[i].row;
            shadowOAM[1 + ENEMYCOUNT * 5 + BULLETCOUNT + i].attr1 = ATTR1_TINY | enemyBullets[i].col;
            shadowOAM[1 + ENEMYCOUNT * 5 + BULLETCOUNT+ i].attr2 = ATTR2_TILEID(enemyBullets[i].aniState, 2 * enemyBullets[i].curFrame) | ATTR2_PALROW(0);
        } else {
            shadowOAM[1 + ENEMYCOUNT * 5 + BULLETCOUNT + i].attr0 = ATTR0_HIDE;
        }
    }

    waitForVBlank();

    //copy the shadowOAM into the OAM
    DMANow(3, shadowOAM, OAM, 128*4);
}

void initializeShip() {
    ship.width = 16;
    ship.height = 16;
    ship.cdel = 0;
    ship.rdel = 0;
    ship.col = SCREENWIDTH/2-ship.height/2;
	ship.row = SCREENHEIGHT - ship.width/2 - 10;

    ship.aniCounter = 0;
    ship.curFrame = 0;
    ship.numFrames = 1;
    ship.aniState = 0;
}

void updateShip() {
    if (BUTTON_HELD(BUTTON_LEFT)) {
        if (ship.col > 0) {
            ship.col--;
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (ship.col < 239 - ship.width) {
            ship.col++;
        }
    }
    if (BUTTON_PRESSED(BUTTON_A) && bulletTimer >= 30) {
        fireBullets();
        bulletTimer = 0;
    }

    bulletTimer++;
}

void initializeEnemies() {
    //initialize first row
    for (int i = 0; i < ENEMYCOUNT; i++) {
        greenEnemies[i].width = 16;
        greenEnemies[i].height = 16;
        greenEnemies[i].cdel = 0;
        greenEnemies[i].rdel = 0;
        greenEnemies[i].col = 10 + i*20;
	    greenEnemies[i].row = 10;

        greenEnemies[i].aniCounter = 0;
        greenEnemies[i].aniState = 1;
        greenEnemies[i].curFrame = 0;
        greenEnemies[i].numFrames = 1;
        greenEnemies[i].active = 1;
    }
    //initialize second row
    for (int i = 0; i < ENEMYCOUNT; i++) {
        yellowEnemies[i].width = 16;
        yellowEnemies[i].height = 16;
        yellowEnemies[i].cdel = 0;
        yellowEnemies[i].rdel = 0;
        yellowEnemies[i].col = 60 + i*20;
	    yellowEnemies[i].row = 26;

        yellowEnemies[i].aniCounter = 0;
        yellowEnemies[i].aniState = 2;
        yellowEnemies[i].curFrame = 0;
        yellowEnemies[i].numFrames = 1;
        yellowEnemies[i].active = 1;
    }
    //initialize third row
    for (int i = 0; i < ENEMYCOUNT; i++) {
        blueEnemies[i].width = 16;
        blueEnemies[i].height = 16;
        blueEnemies[i].cdel = 0;
        blueEnemies[i].rdel = 0;
        blueEnemies[i].col = 35 + i*20;
	    blueEnemies[i].row = 44;

        blueEnemies[i].aniCounter = 0;
        blueEnemies[i].aniState = 3;
        blueEnemies[i].curFrame = 0;
        blueEnemies[i].numFrames = 1;
        blueEnemies[i].active = 1;
    }
    //initialize fourth row
    for (int i = 0; i < ENEMYCOUNT; i++) {
        yelEnemies[i].width = 16;
        yelEnemies[i].height = 16;
        yelEnemies[i].cdel = 0;
        yelEnemies[i].rdel = 0;
        yelEnemies[i].col = 10 + i*20;
	    yelEnemies[i].row = 60;

        yelEnemies[i].aniCounter = 0;
        yelEnemies[i].aniState = 2;
        yelEnemies[i].curFrame = 0;
        yelEnemies[i].numFrames = 1;
        yelEnemies[i].active = 1;
    }
    //initialize fifth row
    for (int i = 0; i < ENEMYCOUNT; i++) {
        greEnemies[i].width = 16;
        greEnemies[i].height = 16;
        greEnemies[i].cdel = 0;
        greEnemies[i].rdel = 0;
        greEnemies[i].col = 60 + i*20;
	    greEnemies[i].row = 76;

        greEnemies[i].aniCounter = 0;
        greEnemies[i].aniState = 1;
        greEnemies[i].curFrame = 0;
        greEnemies[i].numFrames = 1;
        greEnemies[i].active = 1;
    }
    
}

void updateEnemies(ANISPRITE * a) {
    //if ship's bullets hit the sprite
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (a->active && collision(shipBullets[i].col, shipBullets[i].row, shipBullets[i].width, shipBullets[i].height, a->col, a->row, a->width, a->height)) {
            shipBullets[i].active = 0;
            enemiesRemaining--;
            a->active = 0;
            a->row = -10;
        }
    }
    //fire bullets randomly
    if ((rand() + bulletTimer * 4) % 2000 == 0 && a->active) {
        fireEnemyBullets(a);
    }
}

 void initializeEnemyBullets() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        enemyBullets[i].width = 8;
        enemyBullets[i].height = 16;
        enemyBullets[i].cdel = 0;
        enemyBullets[i].rdel = 1;
        enemyBullets[i].col = 0;
	    enemyBullets[i].row = 0;

        enemyBullets[i].aniCounter = 0;
        enemyBullets[i].aniState = 1;
        enemyBullets[i].curFrame = 1;
        enemyBullets[i].numFrames = 1;
        enemyBullets[i].active = 0;
    }

 }

 void fireEnemyBullets(ANISPRITE* a) {
     //find first inactive bullet in enemy's bullets
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (!enemyBullets[i].active) {
            //position the new bullet
            enemyBullets[i].col = a->col + a->width/2 - enemyBullets[i].width/2;
            enemyBullets[i].row = a->row;

            //take the bullet out of the pool
            enemyBullets[i].active = 1;

            break;
        }
    }
 }

void initializeBullets() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        shipBullets[i].width = 8;
        shipBullets[i].height = 16;
        shipBullets[i].cdel = 0;
        shipBullets[i].rdel = -1;
        shipBullets[i].col = ship.col + ship.width / 2;
	    shipBullets[i].row = ship.row;

        shipBullets[i].aniCounter = 0;
        shipBullets[i].aniState = 0;
        shipBullets[i].curFrame = 1;
        shipBullets[i].numFrames = 1;
        shipBullets[i].active = 0;
    }
}

void fireBullets() {
    //find first inactive bullet in ship's bullets
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (!shipBullets[i].active) {
            //position the new bullet
            shipBullets[i].col = ship.col + ship.width/2 - shipBullets[i].width/2;
            shipBullets[i].row = ship.row;

            //take the bullet out of the pool
            shipBullets[i].active = 1;

            break;
        }
    }
}

void updateBullets(ANISPRITE* b) {
    if (b->active) {
        if (b->row + b->height > 0 && b->row < 160) {
            b->row += b->rdel;
        } else {
            b->active = 0;
        }
    }
}

void updateEnemyBullets(ANISPRITE* b) {
    if (b->active) {
        if (b->row + b->height > 0 && b->row < 160) {
            b->row += b->rdel;
        } else {
            b->active = 0;
        }
    }

    //if enemy bullets hit the ship, decrease ship's lives
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (b->active && collision(ship.col, ship.row, ship.width, ship.height, b->col, b->row, b->width, b->height)) {
            b->active = 0;
            livesRemaining--;
            b->active = 0;
            b->row = -10;
        }
    }
}


