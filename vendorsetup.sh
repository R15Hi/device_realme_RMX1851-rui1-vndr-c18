#!/bin/bash

banner () {
clear
echo ""
echo "================================="
echo "Aosp Setup Script For Realme 3 pro"
echo "================================="
echo ""
}
banner
sleep 2

# Cleanup
banner
echo "Cleaning Up..."
rm -rf vendor/qcom/opensource/power

# Vendor
banner
echo "Clonning Vendor..."
git clone https://github.com/SamarV-121/proprietary_vendor_realme_sdm710-common -b ten vendor/realme/sdm710-common 

# Device
banner
echo "Clonning common device tree..."
git clone https://github.com/PixelExperience-Devices/device_realme_sdm710-common -b ten device/realme/sdm710-common

# prebuilts/arm64-gcc
banner
echo "prebuilts/arm64-gcc..."
git clone https://github.com/arter97/arm64-gcc prebuilts/arm64-gcc

# power
banner
echo "Clonning power..."
git clone https://github.com/PixelExperience/vendor_qcom_opensource_power -b ten vendor/qcom/opensource/power
