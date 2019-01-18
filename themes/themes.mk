LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

PRODUCT_PACKAGES += \
    AmberThemeOverlay \
    BlackThemeOverlay \
    BlueThemeOverlay \
    CyanThemeOverlay \
    GrayThemeOverlay \
    OrangeThemeOverlay \
    PinkThemeOverlay \
    PixelThemeOverlay \
    PurpleThemeOverlay \
    RedThemeOverlay \
    TealThemeOverlay
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=org.reloaded.theme.pixel