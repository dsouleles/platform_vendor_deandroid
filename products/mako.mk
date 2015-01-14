$(call inherit-product, vendor/deandroid/configs/common.mk)

# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)


# Setup device specific product configuration
PRODUCT_NAME := deandroid_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:5.0.1/LRX22C/1602158:user/release-keys PRIVATE_BUILD_DESC="occam-user 5.0.1 LRX22C 1602158 release-keys"
