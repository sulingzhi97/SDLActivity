LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	png.c \
	pngerror.c \
	pnggccrd.c \
	pngget.c \
	pngmem.c \
	pngpread.c \
	pngread.c \
	pngrio.c \
	pngrtran.c \
	pngrutil.c \
	pngset.c \
	pngtrans.c \
	pngvcrd.c \
	pngwio.c \
	pngwrite.c \
	pngwtran.c \
	pngwutil.c
#模块的名字，必须唯一
LOCAL_MODULE:= libpng
LOCAL_C_INCLUDES += external/zlib
LOCAL_LDLIBS := -lz

include $(BUILD_STATIC_LIBRARY)


