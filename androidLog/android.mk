LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)             #会清理除了LOCAL_PATH歪的其他LOCAL文件路径
LOCAL_CFLAGS += -std=c99          #使用c语言c99规范
LOCAL_CXXFLAGS += -std=c++11      #使用c++语言c++11规范
LOCAL_CFLAGS += -pie -fPIE        #相当于在源文件中增加宏定义，安卓5.0以上需要添加,否则编译出来无法使用
LOCAL_LDFLAGS += -pie -fPIE       #相当于在源文件中增加宏定义，安卓5.0以上需要添加,否则编译出来无法使用
LOCAL_ARM_MODE := arm             #模块指令集
LOCAL_MODULE    := logTest        #模块名称
LOCAL_SRC_FILES := log.cpp        #源文件名
LOCAL_LDLIBS := -llog             #链接log库
LOCAL_C_INCLUDES += $(NDK_PATH)   #头文件引用
include $(BUILD_EXECUTABLE)       #编译为可执行文件