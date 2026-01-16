#ifndef GPIO_H
#define GPIO_H
void gpio_init(void);
#endif

int add ( int a, int b)
{
    return a+b;
} 

#include <stdint.h>

#define INC(x) ((x) + 1)


volatile int counter = 4;
int x;
int y;

int main(void)
{
    x=10;
    counter = INC(5);
    y = counter;
    add(x, y);
    while (1);
}

