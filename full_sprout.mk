#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/sbin/multi_init:root/sbin/multi_init \
    $(LOCAL_PATH)/recovery/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sprout
PRODUCT_NAME := full_sprout
PRODUCT_BRAND := google
PRODUCT_MODEL := sprout
PRODUCT_MANUFACTURER := google

