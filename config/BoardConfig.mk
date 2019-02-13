include vendor/zirconium/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/zirconium/config/BoardConfigQcom.mk
endif

include vendor/zirconium/config/BoardConfigSoong.mk
