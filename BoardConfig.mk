
#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8475-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/udon
BOARD_VENDOR := oneplus

# Display
TARGET_SCREEN_DENSITY := 420

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Security patch level
VENDOR_SECURITY_PATCH := 2023-01-05

DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

-include vendor/oneplus/CPH2487/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_DIR := device/oneplus/udon-prebuilt

KERNEL_MODULE_DIR := $(TARGET_KERNEL_DIR)/modules
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(TARGET_KERNEL_DIR)/kernel
TARGET_PREBUILT_KERNEL := $(TARGET_KERNEL_DIR)/dtb
BOARD_PREBUILT_DTBOIMAGE := $(TARGET_KERNEL_DIR)/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(TARGET_KERNEL_DIR)/dtb

# Kernel Modules
KERNEL_MODULES := $(wildcard $(KERNEL_MODULE_DIR)/*.ko)
