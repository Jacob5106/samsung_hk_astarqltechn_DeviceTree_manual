#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot adeveloper GSl with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration $(call inherit-product, vendor/twrp/config/common.mk)
# Device specific configs $(call inherit-product, device/samsung/astarqltechn/device.mk)
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := astarqltechn
PRODUCT_NAME := omni_astarqltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G8850
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := samsung