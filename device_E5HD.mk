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

$(call inherit-product-if-exists, vendor/Bq/E5HD/E5HD-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay/

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/root/fstab.mt6582:root/fstab.mt6582

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/root/ueventd.mt6582.rc:root/ueventd.mt6582.rc \
	$(LOCAL_PATH)/root/init.mt6582.rc:root/init.mt6582.rc \
	$(LOCAL_PATH)/root/init.modem.rc:root/init.modem.rc \
	$(LOCAL_PATH)/root/init.protect.rc:root/init.protect.rc \
	$(LOCAL_PATH)/root/init.mt6582.usb.rc:/root/init.mt6582.usb.rc

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_PROPERTY_OVERRIDES := \
	persist.gemini.sim_num=2 \
	ro.gemini.smart_sim_switch=false \
	ro.gemini.smart_3g_switch=1 \
	ril.specific.sm_cause=1 \
	bgw.current3gband=0 \
	ril.external.md=0 \
#	ro.btstack=blueangel \
	ril.current.share_modem=2 \
	ro.mediatek.gemini_support=true \
	persist.radio.fd.counter=15 \
	persist.radio.fd.off.counter=5 \
	persist.radio.fd.r8.counter=15 \
	persist.radio.fd.off.r8.counter=5 \
	ril.first.md=1 \
	ril.flightmode.poweroffMD=1 \
	ril.radiooff.poweroffMD=0 \
	ril.telephony.mode=0 \
	ril.active.md=0 \
	rild.libpath=/system/lib/mtk-ril.so \
	persist.mtk.anr.mechanism=1
	mediatek.wlan.chip=CONSYS_MT6582 \
	mediatek.wlan.module.postfix=_consys_mt6582 \
	persist.mtk.wcn.combo.chipid=0x6582 \
	ro.mediatek.platform=MT6582 \
	ro.mediatek.chip_ver=S01 \
	ro.mediatek.version.branch=KK1.MP1 \
	ro.mediatek.version.sdk=2 \
	ro.mediatek.wlan.p2p=1 \
	ro.mediatek.wlan.wsc=1 \
	ro.opengles.version=131072 \
	ro.sf.lcd_density=294 \
	ro.telephony.ril_class=MediaTekRIL \
	wifi.direct.interface=p2p0 \
	wifi.interface=wlan0 \
	wifi.tethering.interface=ap0 \

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	gsm0710muxd

WIFI_BAND := 802_11_BG

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
