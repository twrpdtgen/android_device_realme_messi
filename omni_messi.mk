#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from messi device
$(call inherit-product, device/realme/messi/device.mk)

PRODUCT_DEVICE := messi
PRODUCT_NAME := omni_messi
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 9 4G
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_messi-eng 99.87.36 SP2A.220405.004 eng.runner.20230317.001819 test-keys"

BUILD_FINGERPRINT := Realme/twrp_messi/messi:99.87.36/SP2A.220405.004/runner03170004:eng/test-keys
