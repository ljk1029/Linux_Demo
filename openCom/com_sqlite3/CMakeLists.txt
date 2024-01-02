#设置版本 
cmake_minimum_required(VERSION 3.4.1) 
project(mysqlite)

#设置目录-以此目录为基准设置下面编译的头，源，库位置、CMakeLists.txt所在目录 
set(CURRENT_DIR ${CMAKE_SOURCE_DIR}) 
#设置编译器 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99") 
#生成gdb的调试信息和不进行代码优化 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0 -g") 

set(TARGET "my_sqlite")

# 添加头文件搜索路径
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libsqlite3/include/)


#包含源文件 ，aux_source_directory将目录所有源文件自动加入 
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/libsqlite3/src/ SOURCE_COMMON) 


#生成可执行文件，这里直接放源文件也行如main.c；太多话，可以设置目录例如SOURCE_COMMON。 
add_executable(${TARGET} 
        ${CMAKE_CURRENT_SOURCE_DIR}/demo_sqlite3.c
        ${SOURCE_COMMON} 
    ) 

#链接我们需要的库，如lpthread系统库 
target_link_libraries(${TARGET} 
#        -ldl 
#        -lpthread 
#        -lstdc++ 
    ) 

# 设置输出路径
set_target_properties(${TARGET}  PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/../bin)




