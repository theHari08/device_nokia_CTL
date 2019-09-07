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

# Inherit from nokia sdm660-common
-include device/nokia/sdm660-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 39982276
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560 # multiple of 4096(BOARD_KERNEL_PAGESIZE)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 52478488000
BOARD_FLASH_BLOCK_SIZE := 131072

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno509

# Kernel
TARGET_KERNEL_CONFIG := CTL_defconfig

# Vendor
BOARD_PREBUILT_VENDORIMAGE := vendor/nokia/prebuilt/CTL/vendor.img
