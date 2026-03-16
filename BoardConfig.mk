#
# Copyright (C) 2025 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

##============================================================================
## DEVICE PATH
##============================================================================
DEVICE_PATH := device/motorola/manaus

##============================================================================
## BUILD SETTINGS
##============================================================================
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

##============================================================================
## A/B PARTITION CONFIGURATION
##============================================================================
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    init_boot \
    vendor_boot \
    vbmeta \
    vbmeta_system \
    product \
    system \
    system_ext \
    vendor \
    vendor_dlkm

##============================================================================
## GKI RECOVERY CONFIGURATION
##============================================================================
# Generic Kernel Image (GKI) configuration
BOARD_USES_GENERIC_KERNEL_IMAGE := true
TARGET_NO_KERNEL := true
TARGET_NO_RECOVERY := true

# Recovery lives in vendor_boot for GKI devices
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
TW_LOAD_VENDOR_BOOT_MODULES := true

# Ramdisk compression
BOARD_RAMDISK_USE_LZ4 := true

##============================================================================
## ARCHITECTURE
##============================================================================
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a78

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

##============================================================================
## BOOTLOADER
##============================================================================
TARGET_BOOTLOADER_BOARD_NAME := manaus
TARGET_NO_BOOTLOADER := true

##============================================================================
## DISPLAY
##============================================================================
TARGET_SCREEN_DENSITY := 400

##============================================================================
## KERNEL
##============================================================================
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_BASE := 0x3fff8000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 loglevel=4
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x26f08000
BOARD_TAGS_OFFSET := 0x07c88000
BOARD_BOOT_HEADER_VERSION := 4
BOARD_DTB_OFFSET := 0x07c88000

BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)

# Prebuilt kernel/dtb
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

##============================================================================
## PARTITION SIZES (VERIFIED FROM DEVICE - ANDROID 15)
##============================================================================
BOARD_FLASH_BLOCK_SIZE := 262144

# boot_a: 67,108,864 bytes (64 MB)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864

# init_boot_a: 8,388,608 bytes (8 MB)
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608

# vendor_boot_a: 67,108,864 bytes (64 MB)
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864

# dtbo_a: 8,388,608 bytes (8 MB)
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# vbmeta_a: 8,388,608 bytes (8 MB)
BOARD_VBMETAIMAGE_PARTITION_SIZE := 8388608

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

##============================================================================
## SUPER PARTITION (VERIFIED FROM DEVICE)
##============================================================================
BOARD_SUPER_PARTITION_SIZE := 7507804160
BOARD_SUPER_PARTITION_GROUPS := motorola_dynamic_partitions
BOARD_MOTOROLA_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product vendor_dlkm
BOARD_MOTOROLA_DYNAMIC_PARTITIONS_SIZE := 7505707008

##============================================================================
## PLATFORM
##============================================================================
TARGET_BOARD_PLATFORM := mt6879
TARGET_BOARD_PLATFORM_GPU := Mali-G610 MC3
BOARD_USES_MTK_HARDWARE := true

##============================================================================
## RECOVERY
##============================================================================
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

##============================================================================
## VERIFIED BOOT (AVB)
##============================================================================
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

##============================================================================
## ANTI-ROLLBACK BYPASS
##============================================================================
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
PLATFORM_VERSION := 15
PLATFORM_VERSION_LAST_STABLE := 15

##============================================================================
## TWRP CONFIGURATION
##============================================================================
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_NTFS_3G := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_EDL_MODE := true
TW_SUPPORT_INPUT_AIDL_EVDEV := true

##============================================================================
## VIRTUAL A/B
##============================================================================
TARGET_VIRTUAL_AB_OTA := true
