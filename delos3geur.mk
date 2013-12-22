#
# Copyright (C) 2011 The Android Open-Source Project
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
LOCAL_PATH := device/samsung/delos3geur
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay


## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
    
## Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/fstab.delos3geur:root/fstab.delos3geur \
    $(LOCAL_PATH)/ramdisk/init.delos.rc:root/init.delos.rc \
    $(LOCAL_PATH)/ramdisk/init.delos.usb.rc:root/init.delos.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_main.sh:root/nit.qcom.class_main.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.unicorn-dpi.sh:root/init.qcom.unicorn-dpi.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/ramdisk/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

## Postboot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/postboot/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/postboot/init.qcom.8x25.sh:system/etc/init.qcom.8x25.sh \
    $(LOCAL_PATH)/postboot/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/postboot/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/postboot/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    $(LOCAL_PATH)/postboot/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/postboot/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/postboot/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/postboot/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
    $(LOCAL_PATH)/postboot/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/postboot/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    $(LOCAL_PATH)/postboot/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh
    
## Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio.primary.default \
    audio_policy.msm7x27a \
    audio_policy.default \
    audio.a2dp.default \
    audio_policy.conf \
    libaudioutils
  
## Video decoding
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libstagefrighthw \
    libOmxCore \
    libI420colorconvert \
    libdashplayer \
    qcmediaplayer

## HW
PRODUCT_PACKAGES += \
    liboverlay \
    libgenlock \
    libmemalloc \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    copybit.msm7x27a \
    libtilerenderer \
    libqdMetaData


## Bluetooth
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

## Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    VisualizationWallpapers \
    librs_jni

## Power HAL
PRODUCT_PACKAGES += \
    power.msm7x27a
	
## Lights HAL
PRODUCT_PACKAGES += \
    lights.msm7x27a
	
## GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a
    
## Camera
PRODUCT_PACKAGES += \
    camera.msm7x27a	

## Wi-Fi
PRODUCTS_PACKAGES += \
    ath6kl_sdio

## Wifi Firmware
## from kernel.org
PRODUCT_COPY_FILES += \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.0/data.patch.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/data.patch.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.0/bdata.SD31.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.SD31.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.0/athwlan.bin.z77:/system/etc/firmware/ath6k/AR6003/hw2.0/athwlan.bin.z77 \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.0/bdata.WB31.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.WB31.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.0/otp.bin.z77:/system/etc/firmware/ath6k/AR6003/hw2.0/otp.bin.z77 \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.SD32.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/endpointping.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/endpointping.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/data.patch.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/data.patch.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/bdata.SD31.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.SD31.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/bdata.WB31.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.WB31.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/athwlan.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/athwlan.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.SD32.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/otp.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/otp.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/fw-3.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw1.0/data.patch.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/data.patch.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw1.0/bdata.SD31.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.SD31.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw1.0/athwlan.bin.z77:/system/etc/firmware/ath6k/AR6003/hw1.0/athwlan.bin.z77 \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw1.0/bdata.WB31.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.WB31.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw1.0/otp.bin.z77:/system/etc/firmware/ath6k/AR6003/hw1.0/otp.bin.z77 \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw1.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.SD32.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6002/eeprom.data:/system/etc/firmware/ath6k/AR6002/eeprom.data \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6002/data.patch.hw2_0.bin:/system/etc/firmware/ath6k/AR6002/data.patch.hw2_0.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6002/athwlan.bin.z77:/system/etc/firmware/ath6k/AR6002/athwlan.bin.z77 \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6002/eeprom.bin:/system/etc/firmware/ath6k/AR6002/eeprom.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/LICENSE.atheros_firmware:/system/etc/firmware/ath6k/LICENSE.atheros_firmware \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.CUSTOM.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.CUSTOM.bin \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw1.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.CUSTOM.bin

## Wifi Firmware (hack for selecting proper bdata.bin)
PRODUCT_COPY_FILES += \
    device/samsung/delos3geur/proprietary/etc/wifi-firmware/ath6k/AR6003/hw2.1.1/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin



## Other
PRODUCT_PACKAGES += \
    dexpreopt \
    librpc \
    com.android.future.usb.accessory \
    libnetcmdiface

## Include non-opensource parts
$(call inherit-product, vendor/samsung/delos3geur/delos3geur-vendor.mk)

## Dalvik Heap
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_TAGS += dalvik.gc.type-precise

## Misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=50 \
    persist.sys.purgeable_assets=1 \
    ro.telephony.call_ring.delay=3000

## Misc    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=4.0_r2 \
    dalvik.vm.lockprof.threshold=500 \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false \
    persist.sys.use_dithering=1 \
    ro.vold.umsdirtyratio=20
