LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_STATIC_ANDROID_LIBRARIES := \
    $(ANDROID_SUPPORT_DESIGN_TARGETS) \
    android-support-transition \
    android-support-v13 \
    android-support-v7-appcompat \
    android-support-v7-cardview \
    android-support-v7-recyclerview \
    android-support-v7-palette \
    android-support-v4

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-common \
    guava 

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res \
frameworks/support/v7/appcompat/res 

LOCAL_CERTIFICATE := platform

LOCAL_PACKAGE_NAME := SoundRecorder
LOCAL_SDK_VERSION := current

LOCAL_AAPT_FLAGS := \
--auto-add-overlay \
--extra-packages android.support.design \
--extra-packages android.support.v7.appcompat

include $(BUILD_PACKAGE)
