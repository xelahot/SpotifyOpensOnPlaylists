PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
TARGET=iphone:latest:14.0
ARCHS = arm64e
THEOS_PACKAGE_SCHEME = rootless
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SpotifyOpensOnPlaylists

SpotifyOpensOnPlaylists_CCFLAGS = -std=c++11 -fno-rtti -DNDEBUG
SpotifyOpensOnPlaylists_CFLAGS = -fobjc-arc #-w #-Wno-deprecated -Wno-deprecated-declarations
SpotifyOpensOnPlaylists_FILES = Tweak.xm $(wildcard **/*.mm)
SpotifyOpensOnPlaylists_FRAMEWORKS = UIKit
# GO_EASY_ON_ME = 1

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
