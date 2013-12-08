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

LOCAL_PATH := device/samsung/lt013g

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/common-overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

# Camera
PRODUCT_PACKAGES += \
    camera.smdk4x12

# IRDA
PRODUCT_PACKAGES += \
    irda.exynos4

# Lights
PRODUCT_PACKAGES += \
    lights.exynos4

# Gps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.xml:system/etc/gps.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cm.hardware.cabc=/sys/class/mdnie/mdnie/cabc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_CHARACTERISTICS := tablet

$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/samsung/lt013g/lt013g-vendor.mk)
