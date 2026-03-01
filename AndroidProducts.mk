#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/omni_manaus.mk \
    $(LOCAL_DIR)/twrp_manaus.mk \
    $(LOCAL_DIR)/pb_manaus.mk

COMMON_LUNCH_CHOICES := \
    omni_manaus-eng \
    twrp_manaus-eng \
    pb_manaus-eng
