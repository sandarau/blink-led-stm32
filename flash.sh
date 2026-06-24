# !/bin/bash
# echo "--- Finding and Extracting Fresh Rust Binary ---"

# Step 1: Clean out any broken 0-byte bin files first
# -f target/thumbv7m-none-eabi/release/*.bin

# Step 2: Use rust-objcopy on the actual executable (ignoring .d or hidden files)
# rust-objcopy -O binary target/thumbv7m-none-eabi/release/blink-led-hw267 target/thumbv7m-none-eabi/release/blink-led-hw267.bin 2>/dev/null || \
# rust-objcopy -O binary target/thumbv7m-none-eabi/release/deps/blink_led_hw267-* target/thumbv7m-none-eabi/release/blink-led-hw267.bin 2>/dev/null

# echo "--- Current File Size Check ---"
# ls -lh target/thumbv7m-none-eabi/release/blink-led-hw267.bin

# echo "--- Starting stm32flash via script ---"
# stm32flash -v -g 0x0 /dev/ttyUSB0 -w target/thumbv7m-none-eabi/release/blink-led-hw267.bin