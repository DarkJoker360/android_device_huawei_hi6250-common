#
# Copyright 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15
TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_SMP := true

# Board
TARGET_BOARD_PLATFORM := hi6250

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi6250
TARGET_NO_BOOTLOADER := true

# File System
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_EXFAT_DRIVER := exfat
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery - TWRP
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TW_DEFAULT_BRIGHTNESS := "2048"
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Selinux
SELINUX_IGNORE_NEVERALLOWS := true

# USB
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_MTP_DEVICE := /dev/mtp_usb

