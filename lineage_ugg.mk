#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ugg device
$(call inherit-product, device/xiaomi/ugg/device.mk)

PRODUCT_NAME := lineage_ugg
PRODUCT_DEVICE := ugg
PRODUCT_MODEL := Redmi Note 5A
PRODUCT_BRAND := xiaomi
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := ugg

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="ugg" \
    PRODUCT_NAME="ugg" \
    PRIVATE_BUILD_DESC="ugg-user 7.1.2 N2G47H V9.1.2.0.NDFMIEI release-keys"

# Set BUILD_FINGERPRINT variable
BUILD_FINGERPRINT := "Xiaomi/ugg/ugg:7.1.2/N2G47H/V9.1.2.0.NDFMIEI:user/release-keys"
