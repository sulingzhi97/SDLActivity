LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := smw_jni

LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/../SDL/include \
		    $(LOCAL_PATH)/../SDL_image $(LOCAL_PATH)/../SDL_mixer $(LOCAL_PATH)/../SDL_net/include
		    
#-o3指优化级别为3级   -fpermissive将编译错误改为编译警告  -ffast-math 浮点优化
LOCAL_CFLAGS := -O3 -fpermissive -ffast-math

LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := $(notdir $(wildcard $(LOCAL_PATH)/*.cpp)) $(notdir $(wildcard $(LOCAL_PATH)/*.c))

LOCAL_SHARED_LIBRARIES := 
LOCAL_STATIC_LIBRARIES := SDL_image SDL_net SDL_mixer SDL png
LOCAL_LDLIBS := -ldl -lGLESv1_CM -lGLESv2 -llog -lstdc++ -lz

include $(BUILD_SHARED_LIBRARY)

