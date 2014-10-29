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

# Inherit device configuration
$(call inherit-product, device/Bq/E5HD/full_E5HD.mk)
$(call inherit-product-if-exists, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_NAME := cm_E5HD
PRODUCT_DEVICE := E5HD
PRODUCT_MODEL := Bq Aquaris E5
PRODUCT_RELEASE_NAME := E5HD
PRODUCT_BRAND := Bq
PRODUCT_MANUFACTURER := Bq
