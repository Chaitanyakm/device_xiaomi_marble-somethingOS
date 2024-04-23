#
# Copyright (C) 2021 The Android Open Source Project
#           (C) 2022-2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/marble

# Inherit from sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := marble

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_marble
TARGET_RECOVERY_DEVICE_MODULES := libinit_marble

# OTA
TARGET_OTA_ASSERT_DEVICE := marble|marblein

# Screen density
TARGET_SCREEN_DENSITY := 420

# Vibrator
$(call soong_config_set, XIAOMI_VIBRATOR, USE_EFFECT_STREAM, true)
