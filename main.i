# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2


void initialize();
void updateGame();
void drawGame();


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
        buttons = (*(volatile unsigned short *)0x04000130);
        updateGame();
        waitForVBlank();
        drawGame();
    }
    return 0;
}

void initialize() {
    (*(volatile unsigned short *) 0x04000000) = ((3) & 7) | (1 << 10);
    mgba_open();
    mgba_printf("Debugging Initialized");
    oldButtons = buttons;
    buttons = (*(volatile unsigned short *)0x04000130);
    currentFrame = 1;
    fillScreen(0);
    frameCount = 0;
    isReverseLooping = 0;
    isLooping = 0;
}

void updateGame() {
    if ((!(~(oldButtons) & ((1 << 6))) && (~(*(volatile unsigned short *)0x04000130) & ((1 << 6))))) {
        if (frameDelay > 10) {
            frameDelay -= 15;
        }
    }
    if ((!(~(oldButtons) & ((1 << 7))) && (~(*(volatile unsigned short *)0x04000130) & ((1 << 7))))) {
        if (frameDelay < 70) {
            frameDelay += 15;
        }
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~(*(volatile unsigned short *)0x04000130) & ((1 << 0)))) ) {
        currentFrame++;
        if (currentFrame > 5) {
            currentFrame = 1;
        }
    }
    if ((!(~(oldButtons) & ((1 << 1))) && (~(*(volatile unsigned short *)0x04000130) & ((1 << 1))))) {
        currentFrame--;
        if (currentFrame < 1) {
            currentFrame = 5;
        }
    }
    if ((!(~(oldButtons) & ((1 << 3))) && (~(*(volatile unsigned short *)0x04000130) & ((1 << 3))))) {

        isLooping = !isLooping;
        mgba_printf_level(4, "this is in the loop");
    }
    if ((!(~(oldButtons) & ((1 << 2))) && (~(*(volatile unsigned short *)0x04000130) & ((1 << 2))))) {
        isLooping = 1;
        isReverseLooping = !isReverseLooping;
        mgba_printf_level(4, "select has been pressed");

    }
    if ((!(~(oldButtons) & ((1 << 5))) && (~(*(volatile unsigned short *)0x04000130) & ((1 << 5))))) {
        currentFrame = 1;
    }
    if ((!(~(oldButtons) & ((1 << 4))) && (~(*(volatile unsigned short *)0x04000130) & ((1 << 4))))) {
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
