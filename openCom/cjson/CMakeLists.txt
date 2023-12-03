#设置版本 
cmake_minimum_required(VERSION 3.4.1) 
project(mycjson)

#设置目录-以此目录为基准设置下面编译的头，源，库位置、CMakeLists.txt所在目录 
set(CURRENT_DIR ${CMAKE_SOURCE_DIR}) 
#设置编译器 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99") 
#生成gdb的调试信息和不进行代码优化 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0 -g") 


# 添加头文件搜索路径
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/)



#包含源文件 ，aux_source_directory将目录所有源文件自动加入 
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/ SOURCE_COMMON) 


#生成IDPS可执行，这里直接放源文件也行如main.c；太多话，可以设置目录例如SOURCE_COMMON。 
add_executable(mycjson 
        #${CMAKE_CURRENT_SOURCE_DIR}/test_base64.c
        #${CMAKE_CURRENT_SOURCE_DIR}/base64.c
        ${SOURCE_COMMON} 
    ) 


# 设置输出路径
set_target_properties(mycjson PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/../bin)







