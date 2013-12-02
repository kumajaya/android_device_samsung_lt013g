#
# Copyright (C) 2012 The CyanogenMod Project
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

# Include common makefile
$(call inherit-product, device/samsung/lt01-common/common.mk)

LOCAL_PATH := device/samsung/lt013g

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.smdk4x12:root/fstab.smdk4x12 \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/tiny_hw.xml:system/etc/sound/lt013g

# Camera
PRODUCT_PACKAGES += \
    camera.smdk4x12

# IRDA
PRODUCT_PACKAGES += \
    irda.exynos4

# Gps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.xml:system/etc/gps.xml

# Product specific Packages
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap \
    SamsungServiceMode

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=SamsungExynos4RIL \
    mobiledata.interfaces=pdp0,wlan0,gprs,ppp0 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=3000

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml


$(call inherit-product-if-exists, vendor/samsung/lt013g/lt013g-vendor.mk)
