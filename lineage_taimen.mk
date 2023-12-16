# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# GMS
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_PRIVAPP_ENFORCEMENT := false

# Rising
RISING_BUILDTYPE := COMMUNITY
RISING_MAINTAINER := SleepQueen
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_PIXEL_FINGERPRINT := false
TARGET_EXCLUDES_AUDIOFX := true

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/taimen/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:11/RP1A.201005.004.A1/6934943:user/release-keys

$(call inherit-product, vendor/google/taimen/taimen-vendor.mk)
