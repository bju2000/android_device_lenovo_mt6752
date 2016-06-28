# 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/mt6752/device.mk)

LOCAL_PATH := device/lenovo/mt6752

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_DEVICE := mt6752
PRODUCT_NAME := full_mt6752
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := mt6752
PRODUCT_MANUFACTURER := lenovo

DEVICE_RESOLUTION := 720x1280

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
CM_BUILD := mt6752
