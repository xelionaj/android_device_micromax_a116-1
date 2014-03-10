# Copyright (C) 2014 The CyanCom Project
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

$(call inherit-product-if-exists, vendor/micromax/a116/a116-vendor.mk)

PRODUCT_PACKAGES += \
    audio.primary.default \
    audio.a2dp.default \
    audio.usb.default \
    libaudio.r_submix.default \
    libaudio.usb.default
	
PRODUCT_PACKAGES += \
    camera.default \
	
PRODUCT_PACKAGES += \
    gps.default \

PRODUCT_PACKAGES += \
    keystore.default
	
PRODUCT_PACKAGES += \
    lights.mt6589
	
PRODUCT_PACKAGES += \
    local_time.default \
    power.default
	
PRODUCT_PACKAGES += \
    sensors.default

PRODUCT_PACKAGES += \
    librs_jni \
    setup_fs \
    l2ping \
    hcitool \
    bttest \
    com.android.future.usb.accessory
	
PRODUCT_PACKAGES += \
	gsm0710muxd

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

PRODUCT_COPY_FILES += \
	device/micromax/a116/media_codecs.xml:system/etc/media_codecs.xml
	
# prebuilt kernel modules
PRODUCT_COPY_FILES += \
	device/micromax/a116/prebuilt/modules/ccci.ko:system/lib/modules/ccci.ko \
	device/micromax/a116/prebuilt/modules/ccci_plat.ko:system/lib/modules/ccci_plat.ko \
	device/micromax/a116/prebuilt/modules/devapc.ko:system/lib/modules/devapc.ko \
	device/micromax/a116/prebuilt/modules/devinfo.ko:system/lib/modules/devinfo.ko \
	device/micromax/a116/prebuilt/modules/mtk_fm_drv.ko:system/lib/modules/mtk_fm_drv.ko \
	device/micromax/a116/prebuilt/modules/mtk_hif_sdio.ko:system/lib/modules/mtk_hif_sdio.ko \
	device/micromax/a116/prebuilt/modules/mtk_stp_bt.ko:system/lib/modules/mtk_stp_bt.ko \
	device/micromax/a116/prebuilt/modules/mtk_stp_gps.ko:system/lib/modules/mtk_stp_gps.ko \
	device/micromax/a116/prebuilt/modules/mtk_stp_uart.ko:system/lib/modules/mtk_stp_uart.ko \
	device/micromax/a116/prebuilt/modules/mtk_stp_wmt.ko:system/lib/modules/mtk_stp_wmt.ko \
	device/micromax/a116/prebuilt/modules/mtk_wmt_wifi.ko:system/lib/modules/mtk_wmt_wifi.ko \
	device/micromax/a116/prebuilt/modules/mtklfb.ko:system/lib/modules/mtklfb.ko \
	device/micromax/a116/prebuilt/modules/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko \
	device/micromax/a116/prebuilt/modules/scsi_tgt.ko:system/lib/modules/scsi_tgt.ko \
	device/micromax/a116/prebuilt/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/micromax/a116/prebuilt/modules/sec.ko:system/lib/modules/sec.ko \
	device/micromax/a116/prebuilt/modules/vcodec_kernel_driver.ko:system/lib/modules/vcodec_kernel_driver.ko \
	device/micromax/a116/prebuilt/modules/wlan_mt6628.ko:system/lib/modules/wlan_mt6628.ko

PRODUCT_COPY_FILES += \
	device/micromax/a116/rootdir/fstab.mt6589:root/fstab.mt6589

PRODUCT_COPY_FILES += \
    device/micromax/a116/rootdir/ueventd.mt6589.rc:root/ueventd.mt6589.rc \
    device/micromax/a116/rootdir/init.mt6589.rc:root/init.mt6589.rc \
    device/micromax/a116/rootdir/init.modem.rc:root/init.modem.rc \
    device/micromax/a116/rootdir/init.protect.rc:root/init.protect.rc \
    device/micromax/a116/rootdir/init.mt6589.usb.rc:/root/init.mt6589.usb.rc
	
PRODUCT_PROPERTY_OVERRIDES := \
    fmradio.driver.chip=3 \
    gps.solution.combo.chip=1 \
    mediatek.wlan.chip=MT6628 \
    mediatek.wlan.ctia=0 \
    mediatek.wlan.module.postfix=_mt6628 \
    persist.mtk.wcn.combo.chipid=0x6628 \
    persist.radio.fd.counter=15 \
    persist.radio.fd.off.counter=5 \
    persist.radio.fd.off.r8.counter=5 \
    persist.radio.fd.r8.counter=15 \
    persist.sys.usb.config=mtp,adb \
    ril.current.share_modem=2 \
    ril.external.md=0 \
    ril.first.md=1 \
    ril.flightmode.poweroffMD=1 \
    ril.radiooff.poweroffMD=0 \
    ril.specific.sm_cause=0 \
    ril.telephony.mode=1 \
    rild.libpath=/system/lib/mtk-ril.so \
    ro.gemini.smart_3g_switch=1 \
    ro.mediatek.chip_ver=S01 \
    ro.mediatek.gemini_support=true \
    ro.mediatek.platform=MT6589 \
    ro.mediatek.version.branch=ALPS.JB2.MP \
    ro.mediatek.version.release=ALPS.JB2.MP.V1.2 \
    ro.mediatek.version.sdk=1 \
    ro.mediatek.wlan.p2p=1 \
    ro.mediatek.wlan.wsc=1 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=320 \
    ro.telephony.ril_class=MediaTekRIL \
    wifi.direct.interface=p2p0 \
    wifi.interface=wlan0 \
    wifi.tethering.interface=ap0
	
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
