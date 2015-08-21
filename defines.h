#pragma once

typedef void (*ISR_FUNC_PTR)(void);
typedef void (*VFPTR)(void);

#define VECT(num,addr) addr
//#define XREG(addr) (__xdata volatile unsigned char)__at(addr)
#define XREG(addr) __xdata volatile unsigned char __at(addr)
