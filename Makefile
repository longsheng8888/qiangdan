TARGET := iphone:clang:16.5:14.0
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard Preferences

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = GrabPrefs
GrabPrefs_FILES = GrabPrefsRootListController.m
GrabPrefs_FRAMEWORKS = UIKit
GrabPrefs_PRIVATE_FRAMEWORKS = Preferences
GrabPrefs_INSTALL_PATH = /Library/PreferenceBundles
GrabPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
