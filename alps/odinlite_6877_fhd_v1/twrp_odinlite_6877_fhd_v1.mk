#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from odinlite_6877_fhd_v1 device
$(call inherit-product, device/alps/odinlite_6877_fhd_v1/device.mk)

PRODUCT_DEVICE := odinlite_6877_fhd_v1
PRODUCT_NAME := twrp_odinlite_6877_fhd_v1
PRODUCT_BRAND := alps
PRODUCT_MODEL := odinlite_6877_fhd_v1
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-beston

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_odinlite_6877_fhd_v1-user 11 RP1A.200720.011 mp3V2971 release-keys"

BUILD_FINGERPRINT := alps/full_odinlite_6877_fhd_v1/odinlite_6877_fhd_v1:11/RP1A.200720.011/mp3V2971:user/release-keys
