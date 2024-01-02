#设置版本 
cmake_minimum_required(VERSION 3.4.1) 
project(myzlog)

#设置目录-以此目录为基准设置下面编译的头，源，库位置、CMakeLists.txt所在目录 
set(CURRENT_DIR ${CMAKE_SOURCE_DIR}) 
#设置编译器 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99") 
#生成gdb的调试信息和不进行代码优化 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0 -g") 

set(TARGET "my_zlog")

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libzlog/src/)

#包含源文件 ，aux_source_directory将目录所有源文件自动加入 
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/libzlog/src/ SOURCE_COMMON) 


#生成可执行文件
add_executable(${TARGET} 
        ${CMAKE_CURRENT_SOURCE_DIR}/demo_zlog.c
        ${SOURCE_COMMON}  
    ) 

# 设置输出路径
set_target_properties(${TARGET} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/../bin)

# 将头文件复制到输出目录
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/zlog.conf ${CMAKE_CURRENT_SOURCE_DIR}/../bin/zlog.conf COPYONLY)







