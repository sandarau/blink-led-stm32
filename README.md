Bare-metal STM32F103C8Tx blink project for PA0.
Build requirements
Install either STM32CubeIDE or GNU Arm Embedded Toolchain, and make sure these commands are on PATH:
make
arm-none-eabi-gcc
arm-none-eabi-objcopy
arm-none-eabi-size
The checked-in Debug makefiles were generated on another machine and contain absolute macOS paths. Use the portable top-level Makefile instead.
Build
From this directory:
make
Outputs are written to build/:
build/blinky.elf
build/blinky.hex
build/blinky.bin
build/blinky.map
Flash
With an ST-Link connected to the STM32F103C8Tx board:
STM32_Programmer_CLI -c port=SWD -w build/blinky.elf -v -rst
If you use STM32CubeIDE, import this folder as an existing project, then clean and rebuild so CubeIDE regenerates its Debug files with local paths.
