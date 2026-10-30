#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from benz device
$(call inherit-product, device/oneplus/benz/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Maintainer name (underscores in values convert to spaces in UI)
DESCARTES_MAINTAINER := Himanshu_Saini

# Processor / SoC model
DESCARTES_PROCESSOR := Snapdragon_7_Gen_3

# Battery capacity and technology
DESCARTES_BATTERY := 5500_mAh

# Display specification
DESCARTES_DISPLAY := 6.7_AMOLED_120Hz

# Camera sensor resolutions (comma-separated for multi-lens setups)
DESCARTES_CAMERA_REAR_INFO := 50,8
DESCARTES_CAMERA_FRONT_INFO := 16

# Build release type (OFFICIAL, UNOFFICIAL, NIGHTLY)
DESCARTES_BUILD_TYPE := UNOFFICIAL

# Enable GMS in the build
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

# Face Unlock (Biometrics)
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device as USB Webcam (UVC)
TARGET_BUILD_DEVICE_AS_WEBCAM := true

# Quick Tap gesture support (Columbus)
TARGET_SUPPORTS_QUICK_TAP := true

# Hardware and window blur effects
TARGET_ENABLE_BLUR := true

# Disable MatLog logging prebuilt
TARGET_DISABLE_MATLOG := true

# Charging
BYPASS_CHARGE_SUPPORTED := true

PRODUCT_NAME := lineage_benz
PRODUCT_DEVICE := benz
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2613

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1790175267562 release-keys" \
    BuildFingerprint=OnePlus/CPH2613IN/OP5D3FL1:16/TP1A.220905.001/U.R4T2.12d17b3_133a34b_1288ae7:user/release-keys \
    DeviceName=OP5D3FL1 \
    DeviceProduct=CPH2613 \
    SystemDevice=OP5D3FL1 \
    SystemName=CPH2613
