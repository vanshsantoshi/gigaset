#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2018 The LineageOS Project
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

include device/Gigaset/gigaset_me/BoardConfigCommon.mk

DEVICE_PATH := device/Gigaset/gigaset_me

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Assert
TARGET_OTA_ASSERT_DEVICE := gigaset_me

# Boot image/kernel
TARGET_KERNEL_CONFIG := gigaset-me_defconfig

# Lineage hardware
#BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/lineagehw
#TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 1610612736
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
# Reserve space for data encryption (24763170816-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25697959424

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Radio
BOARD_HAVE_RADIO := true

# Security Patch Level
VENDOR_SECURITY_PATCH := 2017-09-01

# Wifi
WIFI_BUS := PCIE

# Init
#TARGET_INIT_VENDOR_LIB := libinit_gigaset_me

# Inherit from the proprietary version
-include vendor/Gigaset/gigaset_me/BoardConfigVendor.mk
