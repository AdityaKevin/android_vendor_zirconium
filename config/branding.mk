# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL
CUSTOM_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
ZIRCONIUM_VERSION := IGNITE
TARGET_PRODUCT_SHORT := $(subst zirconium_,,$(CUSTOM_BUILD))

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
ro.zirconium.version=$(ZIRCONIUM_VERSION)
