# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := lt013g

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/lt013g/full_lt013g.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lt013g
PRODUCT_NAME := cm_lt013g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T311
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lt013gxx TARGET_DEVICE=lt013g BUILD_FINGERPRINT="samsung/lt013gxx/lt013g:4.2.2/JDQ39/T311XWUAMG2:user/release-keys" PRIVATE_BUILD_DESC="lt013gxx-user 4.2.2 JDQ39 T311XWUAMG2 release-keys"
