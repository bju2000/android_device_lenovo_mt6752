# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := AIOROW

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lenovo/mt6752/full_mt6752.mk)
$(call inherit-product-if-exists, vendor/lenovo/mt6752/mt6752-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mt6752
PRODUCT_NAME := cm_mt6752
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo A7000-a
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
