#
# Copyright (C) 2017 The LineageOS Project
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

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/kang/system.prop

# Kernel
TARGET_KERNEL_CONFIG := ugg_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/kang/manifest.xml

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55087422464 # 25765059584 - 16384
BOARD_VENDORIMAGE_PARTITION_SIZE   := 872415232

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/kang/sepolicy
