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

## Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml
    
## Rootdir
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom
    
## Charger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/charger:root/charger \
    $(LOCAL_PATH)/rootdir/res/images/battery_0.png:root/res/images/battery_0.png \
    $(LOCAL_PATH)/rootdir/res/images/battery_1.png:root/res/images/battery_1.png \
    $(LOCAL_PATH)/rootdir/res/images/battery_2.png:root/res/images/battery_2.png \
    $(LOCAL_PATH)/rootdir/res/images/battery_3.png:root/res/images/battery_3.png \
    $(LOCAL_PATH)/rootdir/res/images/battery_4.png:root/res/images/battery_4.png \
    $(LOCAL_PATH)/rootdir/res/images/battery_5.png:root/res/images/battery_5.png \
    $(LOCAL_PATH)/rootdir/res/images/battery_charge.png:root/res/images/battery_charge.png \
    $(LOCAL_PATH)/rootdir/res/images/battery_fail.png:root/res/images/battery_fail.png
        
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
    libqdutils \
    libqdMetaData \
    libtilerenderer

## Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    VisualizationWallpapers \
    librs_jni

## Power HAL & HealthD HAL
PRODUCT_PACKAGES += \
    power.msm7x27a \
    libhealthd.msm7x27a
	
## Lights HAL
PRODUCT_PACKAGES += \
    lights.msm7x27a
	
## GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a
    
## Camera
PRODUCT_PACKAGES += \
    camera.msm7x27a
    
## Device-specific packages
PRODUCT_PACKAGES += \
    SamsungServiceMode
    
## QCOM RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=SamsungQualcommRIL \
    ro.zygote.disable_gl_preload=true
    
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

## Enable USB mass storage (and adb) at boot.
ADDITIONAL_DEFAULT_PROPERTIES := \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    ro.secure=0 \
    ro.adb.secure=0
