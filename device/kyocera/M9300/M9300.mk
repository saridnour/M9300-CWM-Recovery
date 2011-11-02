$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/kyocera/M9300/M9300-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/kyocera/M9300/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/kyocera/M9300/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/kyocera/M9300/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := M9300
PRODUCT_DEVICE := M9300

PRODUCT_LOCALES += mdpi
# INIT setup
PRODUCT_COPY_FILES += \

    $(LOCAL_PATH)/ramdisk/default.prop:root/default.prop\
