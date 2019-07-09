#
# Copyright (C) 2018 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AEX stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from CTL
$(call inherit-product, device/nokia/CTL/device.mk)

# Inherit from nokia sdm660-common
$(call inherit-product, device/nokia/sdm660-common/sdm660.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Include Bootanimation configuration
TARGET_BOOT_ANIMATION_RES := 2280

PRODUCT_NAME := aosp_CTL
PRODUCT_DEVICE := CTL
PRODUCT_MANUFACTURER := FIH
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 7.1

PRODUCT_GMS_CLIENTID_BASE := android-hmd

TARGET_VENDOR_PRODUCT_NAME := CTL
TARGET_VENDOR_DEVICE_NAME := CTL

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=CTL \
    PRODUCT_NAME=CTL \
    PRIVATE_BUILD_DESC="CTL_sprout-user 9 PPR1.180610.011 00WW_3_54E:user release-keys"

BUILD_FINGERPRINT := Nokia/Crystal_00WW/CTL_sprout:9/PPR1.180610.011/00WW_3_54E:user/release-keys

# GAPPS
ifeq ($(CURRENT_BUILD_TYPE), gapps)
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
endif
