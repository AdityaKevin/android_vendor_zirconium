# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL
CUSTOM_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
ZIRCONIUM_VERSION := IGNITE
TARGET_PRODUCT_SHORT := $(subst zirconium_,,$(CUSTOM_BUILD))

#UNOFFICIAL
ifndef CUSTOM_BUILD_TYPE
    CUSTOM_BUILD_TYPE := Unofficial
endif

# Only include ZirconiumAosp OTA for official builds
ifeq ($(filter-out OFFICIAL,$(CUSTOM_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updater
endif

ifeq ($(IS_GO_VERSION), true)
CUSTOM_VERSION := Zirconium_go_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
ROM_FINGERPRINT := Zirconium_go/$(CUSTOM_PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)
else
CUSTOM_VERSION := ZirconiumAosp-9.0-$(ZIRCONIUM_VERSION)-$(CUSTOM_BUILD)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
ROM_FINGERPRINT := ZirconiumAosp/9.0/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)
endif

CUSTOM_PROPERTIES := \
    org.zirconium.version=$(CUSTOM_VERSION) \
    org.zirconium.build_date=$(CUSTOM_BUILD_DATE) \
    org.zirconium.build_type=$(CUSTOM_BUILD_TYPE) \
    org.zirconium.fingerprint=$(ROM_FINGERPRINT)

#ZirconiumAosp System Version
PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.zirconium.base.version=$(CUSTOM_BASE_VERSION) \
    ro.zirconium.build.date=$(CUSTOM_DATE) \
    ro.zirconium.build.version=$(CUSTOM_BUILD_VERSION) \
    ro.zirconium.releasetype=$(CUSTOM_BUILD_TYPE) \
    ro.zirconium.version=$(CUSTOM_VERSION)
