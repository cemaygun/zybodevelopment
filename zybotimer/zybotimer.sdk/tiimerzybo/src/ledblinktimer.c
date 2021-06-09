#include <stdio.h>
#include "platform.h"
#include "xscutimer.h"
#include "xgpiops.h"

#include "xparameters.h"


int main()
{
	init_platform();

	// Declare some variables that we'll use later
	int Status;
	int timer_value;

	// Declare four structs.  Two for the Timer instance, and
	// for the timer's config information
	// Other for the LED instance and for the LED config info.
	XScuTimer my_Timer;
	XScuTimer_Config *Timer_Config;
	XGpioPs my_Led;
	XGpioPs_Config *My_Led_Config;

	// Look up the the config information for the timer and the LED
	My_Led_Config=XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	Timer_Config = XScuTimer_LookupConfig(XPAR_PS7_SCUTIMER_0_DEVICE_ID);

	// Initialise the timer and LED using the config information
	Status = XScuTimer_CfgInitialize(&my_Timer, Timer_Config, Timer_Config->BaseAddr);
	Status= XGpioPs_CfgInitialize(&my_Led,My_Led_Config,My_Led_Config->BaseAddr);

	//Set LED pin as output.
	XGpioPs_SetDirectionPin(&my_Led, 7, 1);

	// Load the timer with a value that represents 3 second
	// The SCU Timer is clocked at triple of the freq of the CPU.
	// ARM 9A clock freq=666666687 Hz.
	XScuTimer_LoadTimer(&my_Timer, XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ*3);

	// Start the timer running (it counts down)
	XScuTimer_Start(&my_Timer);

	// An infinite loop
	while(1)
	{
		// Read the value of the timer
		timer_value = XScuTimer_GetCounterValue(&my_Timer);

        //LED on-off depending on timer counter value.
		if (timer_value <= 3*XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ&&timer_value > 2*XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ)
		{
			//Print timer value to the UART
			printf("Timer value is %d times\n\r", timer_value);

			// 0 to turn on LED
			XGpioPs_WritePin(&my_Led, 7, 0 ) ;
		}
		else if (timer_value <= 2*XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ&&timer_value >XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ-1)
		{
			//Print timer value
			printf("Timer value is %d times\n\r", timer_value);

			// 1 to turn off LED
			XGpioPs_WritePin(&my_Led, 7, 1 );
		}
		else if(timer_value <= XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ)
		{
			// Re-load the original value into the timer and re-start it
			XScuTimer_RestartTimer(&my_Timer);
		}
	}

	cleanup_platform();

	return 0;
}
