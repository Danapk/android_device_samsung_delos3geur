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
DEVICE_PACKAGE_OVERLAYS := device/samsung/delos3geur/overlay


# Hardware properties 
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
    
# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/delos3geur/recovery/init.qcom.rc:root/init.qcom.rc \
    device/samsung/delos3geur/recovery/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/samsung/delos3geur/recovery/init.target.rc:root/init.target.rc \
    device/samsung/delos3geur/recovery/lpm.rc:root/lpm.rc \
    device/samsung/delos3geur/recovery/ueventd.qcom.rc:root/ueventd.qcom.rc
    
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio.primary.default \
    audio_policy.msm7x27a \
    audio_policy.default \
    audio.a2dp.default \
    audio_policy.conf \
    libaudioutils
  
# Video decoding
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libstagefrighthw \
    libOmxCore \
    libI420colorconvert \
    libdashplayer \
    qcmediaplayer

# HW
PRODUCT_PACKAGES += \
    libgenlock \
    liboverlay \
    libmemalloc \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    copybit.msm7x27a \
    libtilerenderer \
    libqdMetaData


# Bluetooth
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    VisualizationWallpapers \
    librs_jni

# Power HAL
PRODUCT_PACKAGES += \
    power.msm7x27a
	
# Lights HAL
PRODUCT_PACKAGES += \
    lights.msm7x27a
	
# GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a
    
# Camera
PRODUCT_PACKAGES += \
    camera.msm7x27a	

# Wi-Fi
PRODUCTS_PACKAGES += \
    ath6kl_sdio

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    librpc \
    com.android.future.usb.accessory \
    libnetcmdiface

# Include non-opensource parts
$(call inherit-product, vendor/samsung/delos3geur/delos3geur-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=50 \
    persist.sys.purgeable_assets=1 \
    ro.telephony.call_ring.delay=3000
    
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1
    
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1
