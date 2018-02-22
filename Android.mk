LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

TMP_LOCAL_PATH := $(LOCAL_PATH)

include $(TMP_LOCAL_PATH)/tools/Android.mk
include $(TMP_LOCAL_PATH)/bthost_ipc/Android.mk

ifeq ($(BOARD_USE_QTI_BT_STACK),true)
#include $(TMP_LOCAL_PATH)/wipower-host/Android.mk
include $(TMP_LOCAL_PATH)/bt_logger/Android.mk
include $(TMP_LOCAL_PATH)/libbt-logClient/Android.mk
#include $(TMP_LOCAL_PATH)/BluetoothExt/Android.mk
endif #BOARD_USE_QTI_BT_STACK

