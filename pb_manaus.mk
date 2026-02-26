# Inherit from standard AOSP products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common pb stuff
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from manaus device
$(call inherit-product, device/motorola/manaus/device.mk)

PRODUCT_DEVICE := manaus
PRODUCT_NAME := pb_manaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 neo
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Android 14 API Level and Fingerprint overrides
PLATFORM_VERSION := 14
PLATFORM_VERSION_LAST_STABLE := 14
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="manaus" \
    TARGET_PRODUCT="manaus" \
    PRIVATE_BUILD_DESC="manaus-user 14 U1TM34.100-34-1 01c8b release-keys"

BUILD_FINGERPRINT := motorola/manaus/manaus:14/U1TM34.100-34-1/01c8b:user/release-keys