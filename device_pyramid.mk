#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/pyramid/overlay

# GPS and Light
PRODUCT_PACKAGES += \
    gps.shooter \
    lights.shooter

# Torch
PRODUCT_PACKAGES += \
    Torch

## The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_EU:system/etc/gps.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

# Wifi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/init:root/init \
    device/htc/shooter/ramdisk/init.shooter.rc:root/init.shooter.rc \
    device/htc/shooter/ramdisk/init.shooter.usb.rc:root/init.shooter.usb.rc \
    device/htc/shooter/ramdisk/ueventd.shooter.rc:root/ueventd.shooter.rc

## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/init:recovery/root/init \
    device/htc/shooter/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/shooter/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/shooter/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/shooter/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/shooter/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt

# Some misc configeration files
PRODUCT_COPY_FILES += \
    device/htc/shooter/vold.fstab:system/etc/vold.fstab

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/shooter/keychars/pyramid-keypad.kcm:system/usr/keychars/pyramid-keypad.kcm \
    device/htc/shooter/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/shooter/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
    device/htc/shooter/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/shooter/keylayout/pyramid-keypad.kl:system/usr/keylayout/pyramid-keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/shooter/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
    device/htc/shooter/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# HTC BT Audio tune
PRODUCT_COPY_FILES += device/htc/pyramid/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/shooter/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/shooter/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/shooter/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/shooter/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/shooter/dsp/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/shooter/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/shooter/dsp/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    device/htc/shooter/dsp/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_HP_LE.txt:system/etc/soundimage/Sound_Phone_Original_HP_LE.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_HP_WB_LE.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB_LE.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/shooter/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

## misc
PRODUCT_PROPERTY_OVERRIDES += \
    windowsmgr.max_events_per_sec=240 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/shooter/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    device/htc/shooter/modules/bcmdhd.ko:/system/lib/modules/bcmdhd.ko \
    device/htc/shooter/modules/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/shooter/shooter-vendor.mk)

# call the gapps setup
$(call inherit-product-if-exists, vendor/google/gapps.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/pyramid/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/pyramid/media_htcaudio.mk)

$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)
