LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_RRO_THEME := OrangeThemeOverlay
LOCAL_CERTIFICATE := platform
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_PACKAGE_NAME := OrangeThemeOverlay

LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_IS_RUNTIME_RESOURCE_OVERLAY := true

LOCAL_MODULE_PATH := $(TARGET_OUT)/app/OrangeThemeOverlay

include $(BUILD_PACKAGE)
