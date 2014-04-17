# Inherit device configuration for p4wifi.
$(call inherit-product, device/samsung/p4wifi/p4wifi.mk)

# Get all fonts and add some locales
$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/noto-fonts/fonts.mk)
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)
$(call inherit-product-if-exists, external/sil-fonts/fonts.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
PRODUCT_LOCALES += tl_PH en_PH en_JP

# Inherit some common nameless stuff.
$(call inherit-product, vendor/nameless/config/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := nameless_p4wifi
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4wifi
PRODUCT_MODEL := GT-P7510
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7510 BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:4.0.4/IMM76D/UELPL:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 4.0.4 IMM76D UELPL release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := p4wifi
