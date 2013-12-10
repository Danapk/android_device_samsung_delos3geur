LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),delos3geur)
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),MSM8225)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
