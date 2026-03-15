#
# Copyright (C) 2025 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/motorola/manaus

##============================================================================
## A/B POSTINSTALL
##============================================================================

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

##============================================================================
## BOOT CONTROL HAL
##============================================================================

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service \
    bootctrl.mt6879 \
    bootctrl.mt6879.recovery \
    libgptutils \
    libz \
    libcutils

##============================================================================
## UPDATE ENGINE
##============================================================================

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

##============================================================================
## VIRTUAL A/B
##============================================================================

PRODUCT_VIRTUAL_AB_OTA := true
PRODUCT_PACKAGES += \
    snapuserd \
    snapuserd.recovery

##============================================================================
## FASTBOOTD
##============================================================================

PRODUCT_PACKAGES += \
    fastbootd

##============================================================================
## DEBUG
##============================================================================

ifeq ($(TARGET_BUILD_VARIANT),eng)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    ro.adb.secure=0
endif
