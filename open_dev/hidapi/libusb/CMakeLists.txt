#设置版本 
cmake_minimum_required(VERSION 3.4.1) 
project(myapp)

#根路径
#CMAKE_SOURCE_DIR
#当前路径
#CMAKE_CURRENT_SOURCE_DIR}

#设置目录-以此目录为基准设置下面编译的头，源，库位置、CMakeLists.txt所在目录 
set(CURRENT_DIR ${CMAKE_SOURCE_DIR}) 
#设置编译器 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99") 
#生成gdb的调试信息和不进行代码优化 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0 -g") 

set(TARGET1 "usb")

# 添加头文件搜索路径
include_directories(${CMAKE_SOURCE_DIR}/libusb-1.0.27/libusb/)
include_directories(${CMAKE_SOURCE_DIR}/libusb-1.0.27/libusb/os/)

# 包含源文件，aux_source_directory将目录所有源文件自动加入 
aux_source_directory(${CMAKE_SOURCE_DIR}/libusb-1.0.27/libusb/    SOURCE_COMMON) 
aux_source_directory(${CMAKE_SOURCE_DIR}/libusb-1.0.27/libusb/os/ SOURCE_COMMON_OS) 

# 创建名为"mylib"的动态库
#add_library(${TARGET1} SHARED  
add_library(${TARGET1} STATIC  
    ${SOURCE_COMMON}
    ${SOURCE_COMMON_OS})

# 链接我们需要的库，
target_link_libraries(${TARGET1} 
    -lpthread
    -ludev 
) 


