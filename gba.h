#ifndef GBA_H
#define GBA_H

// Display Control Register
#define REG_DISPCTL (*(volatile unsigned short *) 0x04000000)

// Bits for Display Control Register
#define MODE(x) ((x) & 7) // Sets GBA video mode (REG_DISPCTL)
#define MODE3 (3)
#define BG_ENABLE(x) (1 << (8 + (x & 15))) // Enables specified background (REG_DISPCTL)
#define BG2_ENABLE (1 << 10)

// Scanline Counter
#define REG_VCOUNT (*(volatile unsigned short *) 0x04000006)

// Calculate the position of a pixel in the video buffer based on its x and y positions
#define OFFSET(x, y, rowLength) ((y) * (rowLength) + (x))

// Create a color with the specified RGB values
#define RGB(R, G, B) (((R) & 31) | (((G) & 31) << 5) | (((B) & 31) << 10))

// Predefined Colors
#define RED     RGB(31, 0, 0)
#define GREEN   RGB(0, 31, 0)
#define BLUE    RGB(0, 0, 31)
#define MAGENTA RGB(31, 0, 31)
#define CYAN    RGB(0, 31, 31)
#define YELLOW  RGB(31, 31, 0)
#define ORANGE  RGB(31, 15, 5)
#define PURPLE  RGB(19, 5, 22)
#define BLACK   0
#define WHITE   0x7FFF
#define SKIN    RGB(31,27,22)
#define PINK    RGB(31,19,30)
#define DARK_PINK RGB(31,0,21)
#define LIGHT_BLUE RGB(13,24,28)
#define LIPS    RGB(25,10,7)
#define LIGHT_PEACH RGB(31,27,22)
#define PEACH   RGB(29,21,12)
#define DARK_PEACH  RGB(31,16,0)
#define LIGHT_GREEN     RGB(14,29,14)
#define MOUTH   RGB(31,23,21)


// setPixel Macro
#define setPixel(x, y, color) (videoBuffer[OFFSET(x, y, 240)] = color)

// Typedefs
typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;

// Display constants
#define SCREENHEIGHT 160 // Height of the GBA display
#define SCREENWIDTH  240 // Width of the GBA display

// Global Variables
extern volatile unsigned short* videoBuffer;


// Function Prototypes
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

// Buttons
#define REG_BUTTONS (*(volatile unsigned short *)0x04000130) // Buttons down register
#define BUTTON_A         (1 << 0) // Mask for button A (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_B         (1 << 1) // Mask for button B (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_SELECT    (1 << 2) // Mask for button SELECT (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_START     (1 << 3) // Mask for button START (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_RIGHT     (1 << 4) // Mask for RIGHT button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_LEFT      (1 << 5) // Mask for LEFT button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_UP        (1 << 6) // Mask for UP button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_DOWN      (1 << 7) // Mask for DOWN button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_RSHOULDER (1 << 8) // Mask for RIGHT SHOULDER button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_LSHOULDER (1 << 9) // Mask for LEFT SHOULDER button (REG_BUTTONS or REG_KEYCNT)

// Button checks
extern unsigned short oldButtons; // Keeps track of buttons pressed in previous frame
extern unsigned short buttons; // Keeps track of buttons pressed in current frame
//added variables
extern unsigned short currentFrame; //keeps track of the current frame
extern unsigned short isLooping; //keeps track of the loop
extern unsigned short isReverseLooping;
// TODO: Add these macros from Lab 3
#define BUTTON_HELD(key)    (~(REG_BUTTONS) & (key)) // Checks if a button is currently pressed
#define BUTTON_PRESSED(key) (!(~(oldButtons) & (key)) && (~REG_BUTTONS & (key))) // Checks if a button is currently pressed and wasn't in the previous frame

#endif