#
# Copyright (C) 2017-2019 The LineageOS Project
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

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/kang/overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/kang/overlay-lineage

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1 \
    libunwind

# Input
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/kang/keylayout/gf3208.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gf3208.kl \
    $(DEVICE_PATH)/kang/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(DEVICE_PATH)/kang/keylayout/uinput-gf.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-gf.kl

# Ramdisk
PRODUCT_PACKAGES += \
    init.goodix.sh \
    init.ugg.rc
