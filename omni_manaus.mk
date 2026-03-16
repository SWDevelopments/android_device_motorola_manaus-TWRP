#
# Copyright (C) 2025 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

##============================================================================
## PRODUCT INHERITANCE
##============================================================================

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, device/motorola/manaus/device.mk)

##============================================================================
## PRODUCT IDENTIFICATION
##============================================================================

PRODUCT_DEVICE := manaus
PRODUCT_NAME := omni_manaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 neo
PRODUCT_MANUFACTURER := motorola

##============================================================================
## GMS
##============================================================================
PRODUCT_GMS_CLIENTID_BASE := android-motorola

##============================================================================
## BUILD PROP OVERRIDES (VERIFIED FROM DEVICE)
##============================================================================

# Build description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="manaus_g_sys-user 15 V1TMS35H.3-45-3-2-1 8f2efc-0a4cd7 release-keys"

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="motorola/manaus_g_sys/manaus:15/V1TMS35H.3-45-3-2-1/8f2efc-0a4cd7:user/release-keys"
