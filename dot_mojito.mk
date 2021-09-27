#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/xiaomi/ANXCamera/config.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some common CherishOS stuff
$(call inherit-product, vendor/dot/config/common_full_phone.mk)

DOT_BUILD_TYPE := UNOFFICIAL
WITH_GMS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false

#Maintainer Name
DEVICE_MAINTAINER := Royal King


#Lets go official
DOT_OFFICIAL=true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := dot_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := google/coral/coral:11/RQ3A.210905.001/7511028:user/release-keys 
BUILD_DESCRIPTION := coral-user 11 RQ3A.210905.001 7511028 release-keys 

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \ 
ro.build.fingerprint=$(BUILD_FINGERPRINT) 
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mojito \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
