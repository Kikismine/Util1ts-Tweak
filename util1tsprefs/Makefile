TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Util1tsPrefs

Util1tsPrefs_FILES = UTPRootListController.m
Util1tsPrefs_FRAMEWORKS = UIKit
Util1tsPrefs_PRIVATE_FRAMEWORKS = Preferences
Util1tsPrefs_INSTALL_PATH = /Library/PreferenceBundles
Util1tsPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
