#include <stdio.h>
#include "sleep.h"

#define REG(address)*(volatile unsigned int*)(address)
#define GPIOBASE (0x41200000)
#define GPIODATA (GPIOBASE+0x0000)
#define GPIOTRI (GPIOBASE+0x0004)

int main()
{
    REG(GPIOTRI)=0x00;
    while(1)
    {
    	REG(GPIODATA)=0x0F;
    	sleep(1);
    	REG(GPIODATA)=0x00;
    	sleep(1);

    }
    return 0;
}
