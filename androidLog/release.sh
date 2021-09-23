export NDK_PATH=/Users/runge.liu/Documents/code/android-ndk-r21e/

${NDK_PATH}/ndk-build \
NDK_PROJECT_PATH=./ \
NDK_APPLICATION_MK=Application.mk \
APP_BUILD_SCRIPT=Android.mk

adb push obj/local/armeabi-v7a/logTest /data/local/tmp

adb shell /data/local/tmp/logTest