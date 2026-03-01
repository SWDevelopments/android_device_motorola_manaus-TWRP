#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/motorola/manaus

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control (REQUIRED for A/B devices)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.2-impl \
    bootctrl.mt6879 \
    bootctrl \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_engine_sideload \
    update_verifier

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.bootctrl=mt6879 \
    sys.usb.configfs=1 \
    sys.usb.controller=11201000.usb0

# Shipping API level
# PRODUCT_SHIPPING_API_LEVEL := 33

# VNDK
# PRODUCT_TARGET_VNDK_VERSION := 33
