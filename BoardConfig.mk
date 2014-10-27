# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon

BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
TARGET_RECOVERY_INITRC := device/Bq/Aquaris-E5/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/Bq/Aquaris-E5/recovery/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_NO_BOOTLOADER := false
TARGET_PREBUILT_KERNEL := device/Bq/Aquaris-E5/kernel
