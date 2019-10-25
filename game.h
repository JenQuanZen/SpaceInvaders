//sprite struct
typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int active;
} ANISPRITE;

//constants
#define ENEMYCOUNT 8
#define BULLETCOUNT 10

//variables
extern ANISPRITE ship;
extern int enemiesRemaining;
extern int livesRemaining;

//game prototypes
void initializeGame();
void updateGame();
void drawGame();
//ship prototypes
void initializeShip();
void updateShip();
//enemies prototypes
void initializeEnemies();
void updateEnemies(ANISPRITE*);
//ship bullet prototypes
void initializeBullets();
void fireBullets();
void updateBullets(ANISPRITE*);
//enemy bullet prototypes
void initializeEnemyBullets();
void fireEnemyBullets(ANISPRITE*);
void updateEnemyBullets(ANISPRITE*);