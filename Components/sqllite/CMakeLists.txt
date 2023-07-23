# For more information about using CMake with Android Studio, read the
# documentation: https://d.android.com/studio/projects/add-native-code.html

# Sets the minimum version of CMake required to build the native library.

cmake_minimum_required(VERSION 3.4.1)

## Debug模式设置为最低优化等级，这样能尽可能多的保留Debug信息
#set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O0")
#set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0 ")
#
## 对于x86和x86-64显示的设置-Os参数
## 注意一旦显示设置了编译参数则意味着默认的编译参数将全部抛弃，所以需要一定要设置-s这个对减小体积起主要作用的参数
#if (${ANDROID_ABI} STREQUAL "x86")
#    set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -s -Os")
#    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -s -Os")
#endif ()

#appoint chain
SET(CMAKE_SYSTEM_NAME Linux)
SET(SDKTARGETSYSROOT "/home/toolchain/AG55YIQI/ql-sysroots")
SET(TOOLCHAIN_DIR "/home/toolchain/AG55YIQI/gcc/usr/bin/arm-oe-linux-gnueabi")
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/arm-oe-linux-gnueabi-g++)
set(CMAKE_C_COMPILER   ${TOOLCHAIN_DIR}/arm-oe-linux-gnueabi-gcc)
#set(GNU_FLAGS "-mfpu=vfp -fPIC")
#-Werror -Wno-restrict -Wno-format-truncation -Wno-unused-variable -Wno-array-bounds -Waddress -Wdiv-by-zero -Wfloat-equal -Wno-pointer-sign -Wno-unused-function -fstack-protector -fexpensive-optimizations -frename-registers -fno-omit-frame-pointer -ftree-vectorize   -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -finline-functions -finline-limit=64   -Wno-error=maybe-uninitialized
set(GNU_FLAGS " -rdynamic -mapcs -Wall -fstack-protector-strong -pie -fpie -march=armv7-a -mfpu=neon -mfloat-abi=hard -funwind-tables -ffunction-sections --sysroot=${SDKTARGETSYSROOT}")
set(CMAKE_CXX_FLAGS "${GNU_FLAGS} ")
set(CMAKE_C_FLAGS "${GNU_FLAGS}  ")
SET(CMAKE_FIND_ROOT_PATH  ${SDKTARGETSYSROOT}
 ${SDKTARGETSYSROOT}/usr/include
 ${SDKTARGETSYSROOT}/lib )

include_directories(include/)


set(CURRENT_DIR ${CMAKE_SOURCE_DIR})

LINK_LIBRARIES(-lpthread -ldl)

#link_directories(${CMAKE_SOURCE_DIR}/src/main/jniLibs/ag35)

add_library( # Sets the name of the library.
        sqlite3

        SHARED

        src/mysqlite.c
	src/sqlite3.c
        )



