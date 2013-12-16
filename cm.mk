# Correct bootanimation size for the screen
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Inherit device configuration
$(call inherit-product, device/samsung/delos3geur/full_delos3geur.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Setup device configuration
PRODUCT_NAME := cm_delos3geur
PRODUCT_DEVICE := delos3geur
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I8552
PRODUCT_MANUFACTURER := SAMSUNG
PRODUCT_RELEASE_NAME := delos3geur
