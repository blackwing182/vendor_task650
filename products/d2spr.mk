# Inherit AOSP device configuration for d2spr.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/aokp/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/d2-common

# Setup device specific product configuration.
PRODUCT_NAME := aokp_d2spr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2spr
PRODUCT_MODEL := SPH-L710
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.0.4/IMM76D/L710VPALG2:user/release-keys" PRIVATE_BUILD_DESC="d2spr-user 4.0.4 IMM76D L710VPALG2 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
