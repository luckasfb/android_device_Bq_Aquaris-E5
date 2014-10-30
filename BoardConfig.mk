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

DEVICE_FOLDER := device/Bq/E5HD

-include vendor/wiko/stairway/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := mt6582
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon

# Audio blobs
COMMON_GLOBAL_CFLAGS += -DMR1_AUDIO_BLOB -DDISABLE_HW_ID_MATCH_CHECK

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 512

# EGL settings
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
USE_OPENGL_RENDERER := true

TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/recovery/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE:= 968884224
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_CACHEIMAGE_PARTITION_SIZE := 734003200

TARGET_USERIMAGES_USE_EXT4 := true

TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery/recovery.fstab
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/boot.mk

# wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_P2P_SUPPLICANT_DRIVER := NL80211
HAVE_CUSTOM_WIFI_DRIVER_2 := true
HAVE_INTERNAL_WPA_SUPPLICANT_CONF := true
HAVE_CUSTOM_WIFI_HAL := mediatek
WPA_SUPPLICANT_VERSION := VER_0_6_X
P2P_SUPPLICANT_VERSION := VER_0_8_X
MTK_WAPI_SUPPORT := yes
MTK_EAP_SIM_AKA := yes
