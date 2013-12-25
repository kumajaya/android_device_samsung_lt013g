# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := lt013g

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

$(call inherit-product, device/samsung/lt013g/device.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/lt013g/full_lt013g.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lt013g
PRODUCT_NAME := omni_lt013g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T311
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lt013gxx TARGET_DEVICE=lt013g BUILD_FINGERPRINT="samsung/lt013gxx/lt013g:4.2.2/JDQ39/T311XWUAMG2:user/release-keys" PRIVATE_BUILD_DESC="lt013gxx-user 4.2.2 JDQ39 T311XWUAMG2 release-keys"
