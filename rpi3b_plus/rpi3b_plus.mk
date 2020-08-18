# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2020 Roman Stratiienko (r.stratiienko@gmail.com)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/glodroid/rpi3b_plus/device.mk)

PRODUCT_BOARD_PLATFORM := broadcom
PRODUCT_NAME := rpi3b_plus
PRODUCT_DEVICE := rpi3b_plus
PRODUCT_BRAND := RaspberryPI
PRODUCT_MODEL := rpi3b_plus
PRODUCT_MANUFACTURER := RaspberryPiFoundation

UBOOT_DEFCONFIG := rpi_3_defconfig
ATF_PLAT        := rpi3

KERNEL_DEFCONFIG := $(LOCAL_PATH)/bcmrpi3_defconfig

KERNEL_DTB_FILE := broadcom/bcm2710-rpi-3-b-plus.dtb

SYSFS_MMC0_PATH := emmc2bus/fe340000.emmc2

RPI_CONFIG := $(LOCAL_PATH)/config.txt
