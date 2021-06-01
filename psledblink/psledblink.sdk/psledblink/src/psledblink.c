#include "sleep.h"
#define REG(address) *(volatile unsigned int*)(address) //Register writing function

//See Zynq-7000 SOC Technical Reference Manual for registers /Page:1346
#define GPIOPS_BASE (0xE000A000)
#define GPIOPS_DATA_0FFSET (GPIOPS_BASE + 0x0040)
#define GPIOPS_DIRM_0FFSET (GPIOPS_BASE + 0x0204)
#define GPIO_OUTEN_0FFSET (GPIOPS_BASE + 0x0208)
int main() {
	    /* Set MIO7 (LD4) as output  */
	    REG(GPIOPS_DIRM_0FFSET) = 0b10000000; //set LED4 (7th Pin) as output
	    REG(GPIO_OUTEN_0FFSET) = 0b10000000; // Set output enable

	    while(1){
	    	REG(GPIOPS_DATA_0FFSET) = 0b10000000; //Led4 is on
	    	sleep(1);
	    	REG(GPIOPS_DATA_0FFSET) &= ~(0b10000000); //Led4 is off
	    	sleep(1);
	    }

}
