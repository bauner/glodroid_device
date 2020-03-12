# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2020 Roman Stratiienko (r.stratiienko@gmail.com)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/glodroid/common/device-common.mk)

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=151

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/drm.pinetab.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/drm.pinetab.rc \

# tools
PRODUCT_COPY_FILES += \
    device/glodroid/platform/tools/gensdimg.sh:$(TARGET_COPY_OUT)/gensdimg.sh