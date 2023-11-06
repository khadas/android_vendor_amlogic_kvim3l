ifneq (,$(filter $(TARGET_DEVICE),kvim3l faraday))
  include $(call all-subdir-makefiles)
endif
