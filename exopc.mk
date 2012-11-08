#
# Copyright Hiemanshu Sharma <mail@theindiangeek.in>
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_PACKAGES += \
        $(THIRD_PARTY_APPS) \
        sensors.exopc \
        io_switch \
        make_ext4fs \
        setup_fs \
        mischelp

DEVICE_PACKAGE_OVERLAYS += device/asus/tf700t/overlay

PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/AT_Translated_Set_2_keyboard.kl:system/usr/keylayout/AT_Translated_Set_2_keyboard.kl \

PRODUCT_PROPERTY_OVERRIDES := \
    poweroff.doubleclick=1

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := large mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += mdpi

PRODUCT_NAME := cm_exopc 
PRODUCT_DEVICE := exopc
PRODUCT_MANUFACTURER := Intel

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_x86.mk)
