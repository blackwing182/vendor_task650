$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

# Enhanced NFC
$(call inherit-product, vendor/aokp/configs/nfc_enhanced.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aokp_jflteatt
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jflteatt
PRODUCT_MODEL := SGH-I337
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteatt TARGET_DEVICE=jflteatt BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.2.2/JDQ39/I337UCUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jflteuc-user 4.2.2 JDQ39 I337UCUAMDB release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation.zip
