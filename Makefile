TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Util1ts

Util1ts_FILES = Tweak.x
Util1ts_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += util1tsprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
