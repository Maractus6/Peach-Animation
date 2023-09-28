# 1 "gba.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gba.c"
# 1 "gba.h" 1
# 49 "gba.h"
typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short* videoBuffer;



void waitForVBlank();
void drawHorizontalLine(int, int, int, u16);
void drawVerticalLine(int, int, int, u16);
void drawRectangle(int, int, int, int, u16);
void fillScreen(u16);
void drawEatenPeach(int, int);
void drawWholePeach(int, int);
void drawPrincessPeach(int, int);
void drawPrincessPeachEat(int, int);
void drawFrame1(int, int);
void drawFrame2(int, int);
void drawFrame3(int, int);
void drawFrame4(int, int);
void drawFrame5(int, int);
# 96 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;

extern unsigned short currentFrame;
extern unsigned short isLooping;
extern unsigned short isReverseLooping;
# 2 "gba.c" 2

volatile unsigned short* videoBuffer = (volatile unsigned short*) 0x6000000;

void drawHorizontalLine(int y, int x1, int x2, unsigned short color) {
    for (int i = x1; i <= x2; i++) {
        (videoBuffer[((y) * (240) + (i))] = color);
    }
}

void drawVerticalLine(int x, int y1, int y2, unsigned short color) {
    for (int i = y1; i <= y2; i++) {
        (videoBuffer[((i) * (240) + (x))] = color);
    }
}


void drawRectangle(int x, int y, int height, int width, unsigned short color) {
    for(int i = 0; i < height; i++) {
        for(int j = 0; j < width; j++) {
            (videoBuffer[((y + j) * (240) + (x + i))] = color);
        }
    }
}
void drawWholePeach(int x, int y) {
    drawHorizontalLine(y + 2, x + 11, x + 13, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 3, x + 12, x + 13, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));

    drawHorizontalLine(y + 4, x + 12, x + 14, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 5, x + 8, x + 10, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawHorizontalLine(y + 5, x + 13, x + 15, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 6, x + 7, x + 11, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    (videoBuffer[((y + 6) * (240) + (x + 12))] = (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    (videoBuffer[((y + 6) * (240) + (x + 14))] = (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 7, x + 6, x + 13, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 7, x + 7, x + 9, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawHorizontalLine(y + 7, x + 16, x + 18, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 8, x + 5, x + 11, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 8, x + 12, x + 13, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 8, x + 15, x + 18, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 9, x + 16, x + 19, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 9, x + 4, x + 14, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 8, x + 16, x + 19, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    (videoBuffer[((y + 9) * (240) + (x + 11))] = (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 10, x + 3, x + 15, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    (videoBuffer[((y + 10) * (240) + (x + 10))] = (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 10, x + 17, x + 18, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 11, x + 3, x + 16, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 12, x + 2, x + 14, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 12, x + 15, x + 17, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 13, x + 2, x + 13, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 13, x + 14, x + 17, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 14, x + 2, x + 16, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 14, x + 6, x + 12, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 15, x + 3, x + 16, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 15, x + 8, x + 11, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    (videoBuffer[((y + 16) * (240) + (x + 3))] = (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 16, x + 3, x + 15, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 17, x + 3, x + 14, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine(y + 18, x + 4, x + 13, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawHorizontalLine( y + 19, x + 7, x + 12, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));

}
void drawEatenPeach(int x, int y) {
    drawHorizontalLine(y + 2, x + 7, x + 9, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 3, x + 8, x + 9, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 4, x + 8, x + 10, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 5, x + 9, x + 11, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 7, x + 12, x + 14, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 8, x + 11, x + 14, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 10, x + 13, x + 14, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    (videoBuffer[((y + 6) * (240) + (x + 10))] = (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawHorizontalLine(y + 9, x + 12, x + 15, (((14) & 31) | (((29) & 31) << 5) | (((14) & 31) << 10)));
    drawVerticalLine(x + 8, y + 6, y + 8, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawVerticalLine(x + 9, y + 7, y + 15, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawVerticalLine(x + 10, y + 9, y + 14, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawVerticalLine(x + 11, y + 10, y + 2, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    (videoBuffer[((y + 15) * (240) + (x + 3))] = (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawVerticalLine(x + 11, y + 10, y + 12, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 16, x + 2, x + 8, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 15, x + 6, x + 8, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 14, x + 7, x + 8, (((29) & 31) | (((21) & 31) << 5) | (((12) & 31) << 10)));
    drawHorizontalLine(y + 13, x + 6, x + 8, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    (videoBuffer[((y + 12) * (240) + (x + 8))] = (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawHorizontalLine(y + 14, x + 3, x + 6, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawHorizontalLine(y + 15, x + 4, x + 5, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawRectangle(x + 2, y + 17, 7, 3, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 9, y + 16, y + 18, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 10, y + 15, y + 17, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 11, y + 13, y + 16, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 12, y + 12, y + 15, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 13, y + 12, y + 13, (((31) & 31) | (((16) & 31) << 5) | (((0) & 31) << 10)));
}
void drawPrincessPeach(int x, int y) {

    (videoBuffer[((y + 2) * (240) + (x + 12))] = (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    drawRectangle(x + 9, y + 3, 7, 2, (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    (videoBuffer[((y + 3) * (240) + (x + 10))] = 0);
    (videoBuffer[((y + 3) * (240) + (x + 14))] = 0);
    (videoBuffer[((y + 4) * (240) + (x + 9))] = (((13) & 31) | (((24) & 31) << 5) | (((28) & 31) << 10)));
    (videoBuffer[((y + 4) * (240) + (x + 12))] = (((31) & 31) | (((0) & 31) << 5) | (((0) & 31) << 10)));
    (videoBuffer[((y + 4) * (240) + (x + 15))] = (((13) & 31) | (((24) & 31) << 5) | (((28) & 31) << 10)));

    drawRectangle(x + 9, y + 6, 7, 4, (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    drawRectangle(x + 6, y + 7, 4, 4, (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    drawRectangle(x + 4, y + 9, 4, 13, (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 16, y + 7, y + 10, (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 17, y + 9, y + 10, (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    (videoBuffer[((y + 8) * (240) + (x + 5))] = (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    (videoBuffer[((y + 11) * (240) + (x + 8))] = (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 8, y + 16, y + 17, (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    (videoBuffer[((y + 22) * (240) + (x + 6))] = (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 3, y + 18, y + 21, (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));
    drawVerticalLine(x + 2, y + 19, y + 20, (((31) & 31) | (((31) & 31) << 5) | (((0) & 31) << 10)));

    drawRectangle(x + 10, y + 11, 5, 6, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawVerticalLine(x + 15, y + 11, y + 14, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawVerticalLine(x + 16, y + 13, y + 14, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawVerticalLine(x + 9, y + 12, y + 14, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawHorizontalLine(y + 17, x + 11, x + 12, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    (videoBuffer[((y + 15) * (240) + (x + 9))] = (((13) & 31) | (((24) & 31) << 5) | (((28) & 31) << 10)));
    drawHorizontalLine( y + 15, x + 14, x + 15, (((25) & 31) | (((10) & 31) << 5) | (((7) & 31) << 10)));
    drawVerticalLine(x + 12, y + 12, y + 13, 0);

    drawRectangle(x + 6, y + 18, 8, 3, (((31) & 31) | (((19) & 31) << 5) | (((30) & 31) << 10)));
    drawRectangle(x + 7, y + 21, 3, 3, (((31) & 31) | (((27) & 31) << 5) | (((22) & 31) << 10)));
    drawRectangle(x + 10, y + 21, 7, 3, 0x7FFF);

    drawHorizontalLine(y + 25, x + 6, x + 13, (((31) & 31) | (((0) & 31) << 5) | (((21) & 31) << 10)));
    drawHorizontalLine(y + 26, x + 5, x + 14, (((31) & 31) | (((0) & 31) << 5) | (((21) & 31) << 10)));
    drawHorizontalLine(y + 27, x + 4, x + 15, (((31) & 31) | (((0) & 31) << 5) | (((21) & 31) << 10)));
    drawRectangle(x + 3, y + 28, 13, 2, (((31) & 31) | (((0) & 31) << 5) | (((21) & 31) << 10)));
    drawHorizontalLine(y + 27, x + 9, x + 10, (((31) & 31) | (((19) & 31) << 5) | (((30) & 31) << 10)));
    drawHorizontalLine( y + 28, x + 8, x + 11, (((31) & 31) | (((19) & 31) << 5) | (((30) & 31) << 10)));
    drawHorizontalLine(y + 29, x + 7, x + 12, (((31) & 31) | (((19) & 31) << 5) | (((30) & 31) << 10)));
    drawRectangle(x + 2, y + 30, 15, 4, (((31) & 31) | (((19) & 31) << 5) | (((30) & 31) << 10)));
}
void drawPrincessPeachEat(int x , int y) {
    drawPrincessPeach(x, y);
    drawRectangle(x + 14, y + 13, 3, 3, (((31) & 31) | (((23) & 31) << 5) | (((21) & 31) << 10)));

}
void drawFrame1(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, 0);
    drawPrincessPeach(x, y);
    drawWholePeach(x + 15, y + 7);
}
void drawFrame2(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, 0);
    drawPrincessPeachEat(x, y);
    drawWholePeach(x + 15, y + 7);
}
void drawFrame3(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, 0);
    drawPrincessPeach(x, y);
    drawEatenPeach(x + 15, y + 6);
}
void drawFrame4(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, 0);
    drawPrincessPeachEat(x, y);
    drawEatenPeach(x + 15, y + 6);
}
void drawFrame5(int x, int y) {
    drawRectangle(x+ 15, y + 6, 21, 21, 0);
    drawPrincessPeach(x, y);
}


void fillScreen(unsigned short color) {
    for (int i = 0; i < 38400; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while ((*(volatile unsigned short *) 0x04000006) >= 160);
    while ((*(volatile unsigned short *) 0x04000006) < 160);
}
