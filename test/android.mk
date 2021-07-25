LOCAL_PATH := $(call my-dir) 
include $(CLEAR_VARS)             #会清理除了LOCAL_PATH歪的其他LOCAL文件路径
LOCAL_CFLAGS += -std=c99          #使用c语言c99规范
LOCAL_CFLAGS += -pie -fPIE        #相当于在源文件中增加宏定义，安卓5.0以上需要添加,否则编译出来无法使用
LOCAL_LDFLAGS += -pie -fPIE       #相当于在源文件中增加宏定义，安卓5.0以上需要添加,否则编译出来无法使用
LOCAL_ARM_MODE := arm             #模块指令集
LOCAL_MODULE    := TestNdk        #模块名称
LOCAL_SRC_FILES := test.c      #源文件名
include $(BUILD_EXECUTABLE)       #编译为可执行文件