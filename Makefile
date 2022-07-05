TARGET = Minecraft
OBJS = src/main.o

CFLAGS =
CXXFLAGS = $(CFLAGS) -std=c++14 -fno-rtti
ASFLAGS = $(CFLAGS)

# PSP Stuff
BUILD_PRX = 1
PSP_FW_VERSION = 500
PSP_LARGE_MEMORY = 1

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = Minecraft: PlayStation® Portable Edition
PSP_EBOOT_ICON = ICON0.PNG
PSP_EBOOT_BACKGROUND = PIC1.PNG
PSP_EBOOT_SOUND = SND0.AT3

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
