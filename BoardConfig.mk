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

DEVICE_FOLDER := device/Bq/Aquaris-E5

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon

# Audio blobs
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB

TARGET_NO_BOOTLOADER := false

BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 4096

# EGL settings
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
USE_OPENGL_RENDERER := true
# BOARD_EGL_NEEDS_LEGACY_FB := true

TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/recovery/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE:= 968884224
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery/recovery.fstab
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/boot.mk

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := \
	$(DEVICE_FOLDER)/releasetools/Aquaris-E5_ota_from_target_files
