#include "gba.h"
#include "print.h"

// Function Prototypes
void initialize();
void updateGame();
void drawGame();

// buttonsRow
unsigned short oldButtons;
unsigned short buttons;
unsigned short currentFrame;
unsigned short isLooping;
unsigned short isReverseLooping;
unsigned short frameCount;
unsigned short frameDelay = 40;



int main() {

    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        updateGame();
        waitForVBlank();
        drawGame();
    }
    return 0;
}

void initialize() {
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    mgba_open();
    mgba_printf("Debugging Initialized");
    oldButtons = buttons;
    buttons = REG_BUTTONS;
    currentFrame = 1;
    fillScreen(BLACK);
    frameCount = 0;
    isReverseLooping = 0;
    isLooping = 0;
}

void updateGame() {
    if (BUTTON_PRESSED(BUTTON_UP)) {
        if (frameDelay > 10) {
            frameDelay -= 15;
        }
    }
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        if (frameDelay < 70) {
            frameDelay += 15;
        }
    }
    if (BUTTON_PRESSED(BUTTON_A) ) {
        currentFrame++;
        if (currentFrame > 5) {
            currentFrame = 1;
        }
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        currentFrame--;
        if (currentFrame < 1) {
            currentFrame = 5;
        }
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        //start/stop looping
        isLooping = !isLooping;
        mgba_printf_level(MGBA_LOG_DEBUG, "this is in the loop");
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        isLooping = 1;
        isReverseLooping = !isReverseLooping;
        mgba_printf_level(MGBA_LOG_DEBUG, "select has been pressed");

    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        currentFrame = 1;
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        currentFrame = 5;
    }
    if (isLooping == 1 && isReverseLooping == 0) {
        if (frameCount % frameDelay == 0) {
            currentFrame++;
            if (currentFrame > 5) {
                currentFrame = 1;
            }
        }
    }
    if (isLooping == 1 && isReverseLooping == 1) {
        if (frameCount % frameDelay== 0) {
            currentFrame--;
            if (currentFrame < 1) {
                currentFrame = 5;
            }
        }
    }
    mgba_printf("current frame: %d", currentFrame);
    mgba_printf("isLooping: %d", isLooping);
    mgba_printf("isReverseLooping: %d", isReverseLooping);
    frameCount++;
}

void drawGame() {
    if (currentFrame == 1) {
        drawFrame1(120, 80);
    }
    if (currentFrame == 2) {
        drawFrame2(120, 80);
    }
    if (currentFrame == 3) {
        drawFrame3(120, 80);
    }
    if (currentFrame == 4) {
        drawFrame4(120, 80);
    }
    if (currentFrame == 5) {
        drawFrame5(120, 80);
    }
}
