# For more information about using CMake with Android Studio, read the
# documentation: https://d.android.com/studio/projects/add-native-code.html

# Sets the minimum version of CMake required to build the native library.

cmake_minimum_required(VERSION 3.4.1)

# 添加编译选项，启用调试信息和生成调试符号
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

# 添加链接选项，生成调试信息
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -g")

set(CURRENT_DIR ${CMAKE_SOURCE_DIR})

include_directories(include/)

LINK_LIBRARIES(-lpthread -ldl)

add_library( # Sets the name of the library.
        sqlite3
        STATIC
        #SHARED
        src/mysqlite.c
	src/sqlite3.c
        )



