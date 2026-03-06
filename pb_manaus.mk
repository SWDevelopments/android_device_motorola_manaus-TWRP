#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
 $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
 $(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common PitchBlack stuff.
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
    PRIVATE_BUILD_DESC="manaus_g_sys-user 14 U1TMS34.107-34-4-3 7613c3-cb438c release-keys"

BUILD_FINGERPRINT := motorola/manaus_g_sys/manaus:14/U1TMS34.107-34-4-3/7613c3-cb438c:user/release-keys