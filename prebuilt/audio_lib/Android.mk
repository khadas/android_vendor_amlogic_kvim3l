LOCAL_PATH := $(call my-dir)
ifeq ($(shell test $(PLATFORM_SDK_VERSION) -ge 26 && echo OK),OK)
LIB_PATH_32 := $(TARGET_OUT_VENDOR)/lib/
LIB_PATH_64 := $(TARGET_OUT_VENDOR)/lib64/
else
LIB_PATH_32 := $(TARGET_OUT)/lib/
LIB_PATH_64 := $(TARGET_OUT)/lib64/
endif

include $(CLEAR_VARS)
LOCAL_MODULE := libhbgdecode
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(LIB_PATH_32)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libc++ libc libdl liblog libm
include $(BUILD_PREBUILT)
