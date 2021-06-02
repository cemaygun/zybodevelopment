# **ZYBO Z7 20 BOARD DEVELOPMENT LEARNING PROJECTS**

# 1- **ledblinky**

**The Purpose**
The purpose of this task is to build a led blink project. It targets the leds which are connected to PL part. These LEDs are LD0, LD1, LD2, LD3 on Zybo Z7-20. 
PS (ARM Cortex-A9) communicates with PL via AXI interface. Therefore, in Vivado 2019.1 was used for hardware design.

**HW design**
Using Vivado add the following IP blocks and run block automation. Finally, you can export the implementation to hardware then, generate the bitstream which will be used in software design.
1. ZynqQ7 Processing System
2. AXI GPIO "Specify the GPIO board interface LED(4bits)"

**SW design** (Vivado SDK)
1. Generate an application project using the bitstream generated in the previous step.
2. Using the AXI GPIO datasheet, find the corresponding registers and write into registers.

**Result** 
You will see that LD0, LD1, LD2, LD3 blink every 1 second. (See the video).

# 1- **psledblink**

**The Purpose**
As different from first task, we control the led (LD4) which is directly connected to PS.

**HW design**
For hardware design, add ZynqQ7 Processing System IP block only. To control LD4, we do not need AXI interface unlike first project since it is not connected to PL. 

**SW design** (Vivado SDK)
1. Generate an application project using the bitstream generated in the previous step.
2. Using ZYNQ7000 datasheet, go and find the GPIO section and find and write into related registers to control LD4.
(LD4 is pin7)

**Result** 
You will see that LD4 blink every 1 second. (See the video).
