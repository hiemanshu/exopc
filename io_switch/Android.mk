# Copyright (C) 2011 The Android-x86 Open Source Project

ifeq ($(TARGET_PRODUCT),tegav2)
LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := io_switch.c
LOCAL_CFLAGS := -Werror

LOCAL_MODULE := io_switch
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
endif
