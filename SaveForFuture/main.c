#ifndef GPIO_H
#define GPIO_H
void gpio_init(void);
#endif

#include <stdint.h>
//#include "gpio.h"

#define INC(x) ((x) + 1)

#define DEBUG 1

volatile int counter = 0;


int main(void)
{
    counter = INC(5);
    while (1);
}

