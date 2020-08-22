#
# Copyright (C) 2018 The LineageOS Project
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

VENDOR_PATH := device/huawei/hi6250-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := /dev/null

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Treble
BOARD_VNDK_VERSION := current

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(VENDOR_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true

# Board
TARGET_BOARD_INFO_FILE := $(VENDOR_PATH)/board-info.txt

# Display
TARGET_USES_HWC2 := true

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(VENDOR_PATH)/framework_manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := libinit_hi6250
TARGET_RECOVERY_DEVICE_MODULES := libinit_hi6250

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
#BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2207764736
TARGET_COPY_OUT_VENDOR := vendor

# Radio
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Recovery
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/rootdir/etc/fstab.hi6250
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Release tools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_huawei
TARGET_RELEASETOOLS_EXTENSIONS := $(VENDOR_PATH)/releasetools

# Root
BOARD_ROOT_EXTRA_FOLDERS := \
    cust \
    hw_odm \
    modem_log \
    preload \
    sec_storage \
    splash2 \
    version

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/public
