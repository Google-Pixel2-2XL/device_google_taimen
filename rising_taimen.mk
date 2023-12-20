# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit risingOS vendor stuffs
$(call inherit-product, vendor/rising/config/rising.mk)

# Device Identifiers
RISING_MAINTAINER := SleepQueen
RISING_CHIPSET := msm8998
RISING_BUILDTYPE := COMMUNITY
INLINE_KERNEL_BUILDING := true
TARGET_SHIPS_FIRMWARE := true

# Gms apps
WITH_GMS := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_USE_GOOGLE_TELEPHONY := true

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/taimen/device-rising.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rising_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:11/RP1A.201005.004.A1/6934943:user/release-keys

$(call inherit-product, vendor/google/taimen/taimen-vendor.mk)
