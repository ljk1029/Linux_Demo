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

# 添加头文件搜索路径
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/)


# 开源库
#include_directories(./thirdparty/protobuf/include)
#link_directories(./thirdparty/protobuf/lib)

# 搜索指定的库文件
#find_library(LIB_PROTOBUF protobuf HINTS ./thirdparty/protobuf/lib)

# 包含源文件，aux_source_directory将目录所有源文件自动加入 
#aux_source_directory(${CMAKE_SOURCE_DIR}/src/common SOURCE_COMMON) 

# 生成可执行文件，这里直接放源文件也行如main.c；太多话，可以设置目录例如SOURCE_COMMON。 
add_executable(myapp 
        ${CMAKE_SOURCE_DIR}/demo.c 
    ) 

# 链接我们需要的库，
target_link_libraries(myapp 
#        -lspdlog 
#        -lpthread 
#        -lstdc++ 
    ) 

# 设置输出路径
set_target_properties(myapp PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin/)


# 添加子目录，包含 gtest 的构建
add_subdirectory(com_base64)
add_subdirectory(com_cjson)
add_subdirectory(com_spdlog)
add_subdirectory(com_sqlite3)
add_subdirectory(com_zlog)





