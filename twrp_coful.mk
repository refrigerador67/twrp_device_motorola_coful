#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from coful device
$(call inherit-product, device/motorola/coful/device.mk)

PRODUCT_DEVICE := coful
PRODUCT_NAME := twrp_coful
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g31
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coful_g-user 11 RRWBS31.Q3-46-85-7 5bf8c90 release-keys"

BUILD_FINGERPRINT := motorola/coful_g/coful:11/RRWBS31.Q3-46-85-7/5bf8c90:user/release-keys
