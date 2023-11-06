# hdcp_tx key tools
#PRODUCT_COPY_FILES += \
#    vendor/amlogic/kvim3l/hdcp_tx22/hdcp_tx22:$(TARGET_COPY_OUT_VENDOR)/bin/hdcp_tx22

PRODUCT_COPY_FILES += \
    vendor/amlogic/kvim3l/keylayout/Vendor_1d5a_Product_c081.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_1d5a_Product_c081.kl \
    vendor/amlogic/kvim3l/keylayout/Vendor_1d5a_Product_c082.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_1d5a_Product_c082.kl \
    vendor/amlogic/kvim3l/keylayout/Vendor_7545_Product_0021.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_7545_Product_0021.kl

ifeq ($(BOARD_ENABLE_FAR_FIELD_AEC),true)
PRODUCT_COPY_FILES += \
    vendor/amlogic/kvim3l/android.software.farfield.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.farfield.xml
endif
