#
# Copyright (C) 2019 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from flashlmdd device
$(call inherit-product, device/lge/flashlmdd/device.mk)

# Inherit some common Evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifiers

PRODUCT_NAME := evolution_flashlmdd
PRODUCT_DEVICE := flashlmdd
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V50 ThinQ
PRODUCT_MODEL := LM-V500

# Inherit Evolution-X product configuration
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_GAPPS_ARCH := arm64
#EVO_MAINTAINER := YouthGT
EVO_SUPPORT_URL := https://jq.qq.com/?_wv=1027&k=zDRTHgbU
EVO_DONATE_URL := https://s3.ax1x.com/2021/03/11/6YUyX6.png
# Maintainer

PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := flashlmdd_lao_com
TARGET_VENDOR_DEVICE_NAME := flashlmdd

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME="flashlmdd_lao_com" \
PRIVATE_BUILD_DESC="flashlmdd_lao_com-user 10 QKQ1.191021.002 203281715d08f release-keys"

BUILD_FINGERPRINT := "lge/flashlmdd_lao_com/flashlmdd:10/QKQ1.191021.002/203281715d08f:user/release-keys"

