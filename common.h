#pragma once

#define Nop() \
    __asm     \
        nop   \
    __endasm
