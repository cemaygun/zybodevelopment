# **ZYBO Z7 20 BOARD DEVELOPMENT LEARNING PROJECTS**

The projects below uses Zybo Z7 20 development board with XilinxSDK, Vivado 2019 software development kits

# 1- **ledblinky**

**The Purpose**

The purpose of this task is to build a led blink project. It targets the leds which are connected to PL part. These LEDs are LD0, LD1, LD2, LD3 on Zybo Z7-20. 
PS (ARM Cortex-A9) communicates with PL via AXI interface. Vivado 2019.1 and Xilinx SDK were used for hardware and software design respectively.

**HW design**

Using Vivado add the following IP blocks and run block automation. Finally, you can export the implementation to hardware then, generate the bitstream which will be used in software design.
1. ZynqQ7 Processing System
2. AXI GPIO "Specify the GPIO board interface LED(4bits)"

**SW design** (Vivado SDK)

1. Generate an application project using the bitstream generated in the previous step.
2. Using the AXI GPIO datasheet, find the corresponding registers and write into registers.

**Result** 

LD0, LD1, LD2, LD3 blink every 1 second. (See the video).

# 2- **psledblink**

**The Purpose**

As different from first task, we control the led (LD4) which is directly connected to PS.

**HW design**

For hardware design, add ZynqQ7 Processing System IP block only. To control LD4, we do not need AXI interface unlike first project since it is not connected to PL. 

**SW design** (Vivado SDK)

1. Generate an application project using the bitstream generated in the previous step.
2. Using ZYNQ7000 datasheet, find the GPIO section and write into related registers to control LD4.
(LD4 is pin7)

**Result** 

LD4 blink every 1 second. (See the video).

# 3- **zybotimer**

**The Purpose**

The purpose of this task is to blink the MIO LED using Timer. It uses led (Pin7) and timer which are connected to PS (ARM A9). 

**HW design**

Using Vivado add the following IP blocks and run block automation. Finally, you can export the implementation to hardware then, generate the bitstream which will be used in software design.
1. ZynqQ7 Processing System (Unselect the AXI)

**SW design** (Vivado SDK)

1. Generate an application project using the bitstream generated.
2. This time, we use XilinxSDK library. Check files xgpiops.h, xscutimer.h and xparameters.h. All register addresses and Device IDs are defined in xparameters.h and in other 2 files all capabilities (read, write, restart,...) of GPIO and Timer module were implemented as functions.
3. The ARM A9 Cortex clock frequency is 666666687 Hz and triple of this value was loaded into timer Load register and it counts down.
4. Half of the timer count activates the MIO LED pin other half deactivates it.

**Result** 

LD4 will blink every 1.5 seconds.
