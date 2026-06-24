# Creating a blinking-led project with hw267 "blue-pill" mcu, using Rust programming language and flashing with USB-UART in wsl

The specific board I have is **stm32f103c8t6** medium density. 
Check online AN2606 datasheet (pg 116) for bootloader configs
USART:
pa9 tx Used in alternate push-pull, pull-up mode.
pa10 rx used in input, no pull mode

Check also on youtube, there's different tutorials depending on how you want your code to look like. I got a helpful tutorial from https://youtu.be/gTiKnWqJoHo?si=LlAP9isMe7PNud69

Ensure your project has a memory.x file. It will help in creating the hex file.

Once complete, insert your usb-uart and open powershell as admin. confirm that its in the list, and share and then attach it to wsl. Note that disconnecting the usb will detach from wsl unless you run some commands to ensure that it reattaches immediately.

Install stm32flash from their website. Open it in terminal, and run the "make" command. If it has errors, check if a Makefile exists and if not, create one.

While in boot mode, click the reset button once and build your project with cargo build --release. Ensure your config.toml has "target thumbv7m-none-eabi" so that you dont have to type the full command all the time. Confirm that your bin size is not zero with the command: ls -lh target/thumbv7m-none-eabi/release/blink-led-hw267.hex

Run the following command so as to upload your hex file: stm32flash -v -g 0x0 /dev/ttyUSB0 -w target/thumbv7m-none-eabi/release/blink-led-hw267.hex

Return the jumpers to original positions (remove from boot mode) and click reset button once. The LED should start blinking.

