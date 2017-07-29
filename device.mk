#
# Copyright 2017 The Android Open Source Project
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

LOCAL_PATH := device/oppo/A33w

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery/root/sbin/healthd:root/sbin/healthd

PRODUCT_COPY_FILES_OVERRIDES += \
    root/fstab.qcom \
    root/init.qcom.sh \
    root/remount.qcom \
    root/ueventd.qcom.rc \
    recovery/root/fstab.qcom \
    recovery/root/init.qcom.sh \
    recovery/root/remount.qcom \
    recovery/root/ueventd.qcom.rc \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := A33w
