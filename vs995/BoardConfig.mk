#
# Copyright (C) 2017-2018 The LineageOS Project
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

DEVICE_PATH := device/lge/vs995

# inherit from common v20
-include device/lge/v20-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := vs995,us996,h910,h915,elsa

# Kernel
TARGET_KERNEL_CONFIG := lineageos_vs995_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel/$(BOARD_KERNEL_IMAGE_NAME)
TARGET_FORCE_PREBUILT_KERNEL := true

# inherit from the proprietary version
include vendor/lge/vs995/BoardConfigVendor.mk
