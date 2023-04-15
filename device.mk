#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/bluetooth_qti_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_diwali_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_diwali_idp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_diwali_idp_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_diwali_idp_sku1.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_diwali_parrot_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_diwali_parrot_qrd.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_diwali_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_diwali_qrd.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_diwali_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_diwali_qrd_sku1.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_ukee_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_ukee_cdp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_ukee_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_ukee_mtp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_ukee_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_ukee_qrd.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_waipio_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_waipio_cdp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_waipio_mtp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_waipio_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_waipio_qrd.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8475-common/common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Inherit vendor
$(call inherit-product, vendor/oneplus/CPH2487/CPH2487-vendor.mk)
