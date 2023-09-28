#include "gba.h"

volatile unsigned short* videoBuffer = (volatile unsigned short*) 0x6000000;

void drawHorizontalLine(int y, int x1, int x2, unsigned short color) {
    for (int i = x1; i <= x2; i++) {
        setPixel(i, y, color);
    }
}

void drawVerticalLine(int x, int y1, int y2, unsigned short color) {
    for (int i = y1; i <= y2; i++) {
        setPixel(x, i, color);
    }
}

// TODO: Add this function from Lab 2
void drawRectangle(int x, int y, int height, int width, unsigned short color) {
    for(int i = 0; i < height; i++) {
        for(int j = 0; j < width; j++) {
            setPixel(x + i, y + j, color);
        }
    }    
}
void drawWholePeach(int x, int y) {
    drawHorizontalLine(y + 2, x + 11, x + 13, LIGHT_GREEN);
    drawHorizontalLine(y + 3, x + 12, x + 13, LIGHT_GREEN);

    drawHorizontalLine(y + 4, x + 12, x + 14, LIGHT_GREEN);
    drawHorizontalLine(y + 5, x + 8, x + 10, LIGHT_PEACH);
    drawHorizontalLine(y + 5, x + 13, x + 15, LIGHT_GREEN);
    drawHorizontalLine(y + 6, x + 7, x + 11, LIGHT_PEACH);
    setPixel(x + 12, y + 6, PEACH);
    setPixel(x + 14, y + 6, LIGHT_GREEN);
    drawHorizontalLine(y + 7, x + 6, x + 13, PEACH);
    drawHorizontalLine(y + 7, x + 7, x + 9, LIGHT_PEACH);
    drawHorizontalLine(y + 7, x + 16, x + 18, LIGHT_GREEN);
    drawHorizontalLine(y + 8, x + 5, x + 11, PEACH);
    drawHorizontalLine(y + 8, x + 12, x + 13, DARK_PEACH);
    drawHorizontalLine(y + 8, x + 15, x + 18, LIGHT_GREEN);
    drawHorizontalLine(y + 9, x + 16, x + 19, LIGHT_GREEN);
    drawHorizontalLine(y + 9, x + 4, x + 14, PEACH);
    drawHorizontalLine(y + 8, x + 16, x + 19, LIGHT_GREEN);
    setPixel(x + 11, y + 9, DARK_PEACH);
    drawHorizontalLine(y + 10, x + 3, x + 15, PEACH);
    setPixel(x + 10, y + 10, DARK_PEACH);
    drawHorizontalLine(y + 10, x + 17, x + 18, LIGHT_GREEN);
    drawHorizontalLine(y + 11, x + 3, x + 16, PEACH);
    drawHorizontalLine(y + 12, x + 2, x + 14, PEACH);
    drawHorizontalLine(y + 12, x + 15, x + 17, DARK_PEACH);
    drawHorizontalLine(y + 13, x + 2, x + 13, PEACH);
    drawHorizontalLine(y + 13, x + 14, x + 17, DARK_PEACH);
    drawHorizontalLine(y + 14, x + 2, x + 16, DARK_PEACH);
    drawHorizontalLine(y + 14, x + 6, x + 12, PEACH);
    drawHorizontalLine(y + 15, x + 3, x + 16, DARK_PEACH);
    drawHorizontalLine(y + 15, x + 8, x + 11, PEACH);
    setPixel(x + 3, y + 16, DARK_PEACH);
    drawHorizontalLine(y + 16, x + 3, x + 15, DARK_PEACH);
    drawHorizontalLine(y + 17, x + 3, x + 14, DARK_PEACH);
    drawHorizontalLine(y + 18, x + 4, x + 13, DARK_PEACH);
    drawHorizontalLine( y + 19, x + 7, x + 12, DARK_PEACH);

}
void  drawEatenPeach(int x, int y) {
    drawHorizontalLine(y + 2, x + 7, x + 9, LIGHT_GREEN);
    drawHorizontalLine(y + 3, x + 8, x + 9, LIGHT_GREEN);
    drawHorizontalLine(y + 4, x + 8, x + 10, LIGHT_GREEN);
    drawHorizontalLine(y + 5, x + 9, x + 11, LIGHT_GREEN);
    drawHorizontalLine(y + 7, x + 12, x + 14, LIGHT_GREEN);
    drawHorizontalLine(y + 8, x + 11, x + 14, LIGHT_GREEN);
    drawHorizontalLine(y + 10, x + 13, x + 14, LIGHT_GREEN);
    setPixel(x + 10, y + 6, LIGHT_GREEN);
    drawHorizontalLine(y + 9, x + 12, x + 15, LIGHT_GREEN);
    drawVerticalLine(x + 8, y + 6, y + 8, PEACH);
    drawVerticalLine(x + 9, y + 7, y + 15, PEACH);
    drawVerticalLine(x + 10, y + 9, y + 14, PEACH);
    drawVerticalLine(x + 11, y + 10, y + 2, PEACH);
    setPixel(x + 3, y + 15, PEACH);
    drawVerticalLine(x + 11, y + 10, y + 12, PEACH);
    drawHorizontalLine(y + 16, x + 2, x + 8, PEACH);
    drawHorizontalLine(y + 15, x + 6, x + 8, PEACH);
    drawHorizontalLine(y + 14, x + 7, x + 8, PEACH);
    drawHorizontalLine(y + 13, x + 6, x + 8, LIGHT_PEACH);
    setPixel(x + 8, y + 12, LIGHT_PEACH);
    drawHorizontalLine(y + 14, x + 3, x + 6, LIGHT_PEACH);
    drawHorizontalLine(y + 15, x + 4, x + 5, LIGHT_PEACH);
    drawRectangle(x + 2, y + 17, 7, 3, DARK_PEACH);
    drawVerticalLine(x + 9, y + 16, y + 18, DARK_PEACH);
    drawVerticalLine(x + 10, y + 15, y + 17, DARK_PEACH);
    drawVerticalLine(x + 11, y + 13, y + 16, DARK_PEACH);
    drawVerticalLine(x + 12, y + 12, y + 15, DARK_PEACH);
    drawVerticalLine(x + 13, y + 12, y + 13, DARK_PEACH);
}
void drawPrincessPeach(int x, int y) {
    //crown
    setPixel(x + 12, y + 2, YELLOW);
    drawRectangle(x + 9, y + 3, 7, 2, YELLOW);
    setPixel(x + 10, y + 3, BLACK);
    setPixel(x + 14, y + 3, BLACK);
    setPixel(x + 9, y + 4, LIGHT_BLUE);
    setPixel(x + 12, y + 4, RED);
    setPixel(x + 15, y + 4, LIGHT_BLUE);
    //Hair
    drawRectangle(x + 9, y + 6, 7, 4, YELLOW);
    drawRectangle(x + 6, y + 7, 4, 4, YELLOW);
    drawRectangle(x + 4, y + 9, 4, 13, YELLOW);
    drawVerticalLine(x + 16, y + 7, y + 10, YELLOW);
    drawVerticalLine(x + 17, y + 9, y + 10, YELLOW);
    setPixel(x + 5, y + 8, YELLOW);
    setPixel(x + 8, y + 11, YELLOW);
    drawVerticalLine(x + 8, y + 16, y + 17, YELLOW);
    setPixel(x + 6, y + 22, YELLOW);
    drawVerticalLine(x + 3, y + 18, y + 21, YELLOW);
    drawVerticalLine(x + 2, y + 19, y + 20, YELLOW);
    // face
    drawRectangle(x + 10, y + 11, 5, 6, SKIN);
    drawVerticalLine(x + 15, y + 11, y + 14, SKIN);
    drawVerticalLine(x + 16, y + 13, y + 14, SKIN);
    drawVerticalLine(x + 9, y + 12, y + 14, SKIN);
    drawHorizontalLine(y + 17, x + 11, x + 12, SKIN);
    setPixel(x + 9, y + 15, LIGHT_BLUE);
    drawHorizontalLine( y + 15, x + 14, x + 15, LIPS);
    drawVerticalLine(x + 12, y + 12, y + 13, BLACK);
    //Upper Body & arms
    drawRectangle(x + 6, y + 18, 8, 3, PINK);
    drawRectangle(x + 7, y + 21, 3, 3, SKIN);
    drawRectangle(x + 10, y + 21, 7, 3, WHITE);
    //Lower dress
    drawHorizontalLine(y + 25, x + 6, x + 13, DARK_PINK);
    drawHorizontalLine(y + 26, x + 5, x + 14, DARK_PINK);
    drawHorizontalLine(y + 27, x + 4, x + 15, DARK_PINK);
    drawRectangle(x + 3, y + 28, 13, 2, DARK_PINK);
    drawHorizontalLine(y + 27, x + 9, x + 10, PINK);
    drawHorizontalLine( y + 28, x + 8, x + 11, PINK);
    drawHorizontalLine(y + 29, x + 7, x + 12, PINK);
    drawRectangle(x + 2, y + 30, 15, 4, PINK);
}
void drawPrincessPeachEat(int x , int y) {
    drawPrincessPeach(x, y);
    drawRectangle(x + 14, y + 13, 3, 3, MOUTH);

}
void drawFrame1(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, BLACK);
    drawPrincessPeach(x, y);
    drawWholePeach(x + 15, y + 7);
}
void drawFrame2(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, BLACK);
    drawPrincessPeachEat(x, y);
    drawWholePeach(x + 15, y + 7);
}
void drawFrame3(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, BLACK);
    drawPrincessPeach(x, y);
    drawEatenPeach(x + 15, y + 6);
}
void drawFrame4(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, BLACK);
    drawPrincessPeachEat(x, y);
    drawEatenPeach(x + 15, y + 6);
}
void drawFrame5(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, BLACK);
    drawPrincessPeach(x, y);
}


void fillScreen(unsigned short color) {
    for (int i = 0; i < 38400; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while (REG_VCOUNT >= 160);
    while (REG_VCOUNT < 160);
}