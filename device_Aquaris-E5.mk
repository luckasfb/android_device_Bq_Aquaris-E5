# Copyright (C) 2013 The Android Open Source Project
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

$(call inherit-product-if-exists, vendor/Bq/Aquaris-E5/Aquaris-E5-vendor.mk)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/root/fstab.mt6582:root/fstab.mt6582

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/root/ueventd.mt6582.rc:root/ueventd.mt6582.rc \
	$(LOCAL_PATH)/root/init.mt6582.rc:root/init.mt6582.rc

PRODUCT_PROPERTY_OVERRIDES := \
	ro.opengles.version=131072 \
	ro.mediatek.platform=MT6582 \
	ro.mediatek.chip_ver=S01 \
	ro.mediatek.version.branch=KK1.MP1 \
	ro.mediatek.version.sdk=2 \

PRODUCT_TAGS += dalvik.gc.type-precise

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
