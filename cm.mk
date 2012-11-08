# Resolution values for bootanimation
TARGET_SCREEN_HEIGHT := 768
TARGET_SCREEN_WIDTH := 1366

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for tf700t.
$(call inherit-product, device/intel/exopc/exopc.mk)

#
# Setup device specific product configuration.
#
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_exopc
PRODUCT_BRAND := intel
PRODUCT_DEVICE := exopc
PRODUCT_MODEL := Intel ExoPC Slate
PRODUCT_MANUFACTURER := intel

# Release name and versioning
PRODUCT_RELEASE_NAME := ExoPC
