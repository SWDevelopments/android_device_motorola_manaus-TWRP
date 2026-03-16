#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 Recovery Device Tree Generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/motorola/manaus

# ==================================================
# A/B OTA Configuration
# ==================================================
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# ==================================================
# Boot Control HAL
# ==================================================
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service \
    bootctrl.mt6879 \
    bootctrl.mt6879.recovery

# ==================================================
# Update Engine for Virtual A/B
# ==================================================
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload \
    snapuserd \
    snapuserd.recovery

# ==================================================
# VAB Specific
# ==================================================
PRODUCT_PACKAGES += \
    checkpoint_gc

# ==================================================
# Soong namespaces
# ==================================================
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# ==================================================
# Proprietary blobs handling
# ==================================================
PRODUCT_PACKAGES += \
    init.recovery.mt6879.rc

# ==================================================
# Build properties
# ==================================================
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware=mt6879 \
    ro.board.platform=mt6879