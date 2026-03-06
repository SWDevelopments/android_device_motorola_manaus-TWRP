#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
# Updated for motorola edge 40 neo (manaus) - Android 14
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common pb stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from manaus device
$(call inherit-product, device/motorola/manaus/device.mk)

PRODUCT_DEVICE := manaus
PRODUCT_NAME := pb_manaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 neo
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="manaus_g_sys-user 14 U1TMS34.107-34-4-3 7613c3-cb438c release-keys MUR1-0.189"

BUILD_FINGERPRINT := motorola/manaus_g_sys/manaus:14/U1TMS34.107-34-4-3/7613c3-cb438c:user/release-keys
