# Inherit some common AICP stuff.
$(call inherit-product, vendor/deandroid/configs/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flounder
PRODUCT_NAME := deandroid_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
PRODUCT_MANUFACTURER := htc
PRODUCT_RESTRICT_VENDOR_FILES := false

