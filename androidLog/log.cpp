#include "/Users/runge.liu/Documents/code/android-ndk-r21e/sysroot/usr/include/android/log.h"
#include <iostream>
#include <unistd.h>
int main()
{
    while(true)
    {
        usleep(100);
        __android_log_print(ANDROID_LOG_INFO, "ANDROID_LOG", "Hello World!");
    }
    
    return 0;
}
