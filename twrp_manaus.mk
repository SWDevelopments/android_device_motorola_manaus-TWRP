#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 Recovery Device Tree Generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
 $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
 $(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common recovery stuff.
 $(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from manaus device
 $(call inherit-product, device/motorola/manaus/device.mk)

# Device identifier
PRODUCT_DEVICE := manaus
PRODUCT_NAME := twrp_manaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 neo
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="manaus_g_sys-user 15 V1TMS35H.3-45-3-2-1 8f2efc-0a4cd7 release-keys"

BUILD_FINGERPRINT := motorola/manaus_g_sys/manaus:15/V1TMS35H.3-45-3-2-1/8f2efc-0a4cd7:user/release-keys