# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from the proprietary version
-include vendor/samsung/delos3geur/BoardConfigVendor.mk

BOARD_VENDOR := samsung

TARGET_SPECIFIC_HEADER_PATH := device/samsung/delos3geur/include

## cflags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DQCOM_ENHANCED_AUDIO -DMR0_AUDIO_BLOB
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT -DNEEDS_VECTORIMPL_SYMBOLS
TARGET_GLOBAL_CFLAGS   += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp

TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a5
TARGET_BOOTLOADER_BOARD_NAME := msm8225
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_LOWMEM := true

## QCOM enhancements
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

## Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

## Kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

## Try to build the kernel
TARGET_KERNEL_CONFIG := cm_delos3geur_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/delos3geur
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

## Partition
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5573804032
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

## Misc
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_USES_MMCUTILS := true

## Filesystem
BOARD_DATA_DEVICE := /dev/block/mmcblk0p24
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p21
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p22
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw

## Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_HAVE_SAMSUNG_AUDIO := true
BOARD_USES_QCOM_AUDIO_RESETALL := true
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true

## Wi-Fi
BOARD_WLAN_DEVICE := ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_ath6kl
WIFI_EXT_MODULE_NAME := cfg80211
WIFI_EXT_MODULE_PATH := /system/lib/modules/cfg80211.ko
WIFI_AP_DRIVER_MODULE_NAME := ath6kl_sdio
WIFI_AP_DRIVER_MODULE_PATH := /system/lib/modules/ath6kl_sdio.ko
WIFI_AP_DRIVER_MODULE_ARG := "suspend_mode=3 wow_mode=2 ath6kl_p2p=1 recovery_enable=1"
WIFI_DRIVER_MODULE_NAME := ath6kl_sdio
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/ath6kl_sdio.ko
WIFI_DRIVER_MODULE_ARG := "suspend_mode=3 wow_mode=2 ath6kl_p2p=1 recovery_enable=1"

## Graphics
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_QCOM_BSP := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_USES_C2D_COMPOSITION := true
BOARD_USE_SKIA_LCDTEXT := true

## Samsung has framebuffer is weird
TARGET_NO_INITLOGO := true

## ION Support
TARGET_USES_ION := true

## Media
TARGET_QCOM_MEDIA_VARIANT := legacy

## BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/delos3geur/bluetooth

## RIL
BOARD_USES_LEGACY_RIL := true
BOARD_USES_LIBSECRIL_STUB := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

## Recovery
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/delos3geur/rootdir/fstab.delos3geur
RECOVERY_FSTAB_VERSION := 2
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/delos3geur/graphics.c
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

## Power HAL
TARGET_PROVIDES_POWERHAL := true

## Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true

## Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

## Hardware Class
#BOARD_HARDWARE_CLASS := device/samsung/delos3geur/cmhw
