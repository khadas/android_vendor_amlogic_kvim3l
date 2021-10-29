ifneq (,$(filter $(TARGET_DEVICE),franklin faraday))
  include $(call all-subdir-makefiles)
endif
