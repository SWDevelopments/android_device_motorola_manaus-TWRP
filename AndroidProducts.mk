#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 Recovery Device Tree Generator
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_manaus.mk \
    $(LOCAL_DIR)/omni_manaus.mk \
    $(LOCAL_DIR)/pb_manaus.mk

COMMON_LUNCH_CHOICES := \
    twrp_manaus-eng \
    omni_manaus-eng \
    pb_manaus-eng