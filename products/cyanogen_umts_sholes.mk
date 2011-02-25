# Inherit AOSP device configuration for passion.
$(call inherit-product, device/motorola/umts_sholes/umts_sholes.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

# Include the Flashlight/Torch
PRODUCT_PACKAGES += Torch

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_umts_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := umts_sholes
PRODUCT_MODEL := Milestone
PRODUCT_MANUFACTURER := Motorola

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Milestone
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7.0.0-RC2-0.07-$(shell date +%y.%m.%d)-Milestone
endif

PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=R.U.R.1920 BUILD_DISPLAY_ID=R.U.R.1920 PRODUCT_NAME=umts_sholes TARGET_DEVICE=umts_sholes BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.2.1/FRG83D/75603:user/release-keys PRODUCT_BRAND=MOTO_RTEU PRIVATE_BUILD_DESC="voles-user 2.2.1 FRG83D 75603 release-keys" BUILD_NUMBER=75603 BUILD_UTC_DATE=1289367602 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

# PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-umts_sholes.map


PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/umts_sholes
