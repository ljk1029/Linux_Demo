# 设置版本 
cmake_minimum_required(VERSION 3.4.1) 
project(myspdlog)

# 设置目录-以此目录为基准设置下面编译的头，源，库位置、CMakeLists.txt所在目录 
set(CURRENT_DIR ${CMAKE_SOURCE_DIR}) 
# 设置编译器 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99") 
# 生成gdb的调试信息和不进行代码优化 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0 -g") 

set(CMAKE_CXX_STANDARD 11)
# 添加编译选项，启用调试信息和生成调试符号
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
# 添加链接选项，生成调试信息
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -g")

set(TARGET "my_spdlog")

# 添加头文件搜索路径
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libspdlog/)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libspdlog/include/)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libspdlog/include/adapter)

# 包含源文件 ，aux_source_directory将目录所有源文件自动加入 
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/libspdlog/adapter/ SOURCE_COMMON) 
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/libspdlog/         SOURCE_API) 

#生成可执行文件，这里直接放源文件也行如main.c；太多话，可以设置目录例如SOURCE_COMMON。 
add_executable(${TARGET}  
        ${CMAKE_CURRENT_SOURCE_DIR}/demo_spdlog.c
        ${SOURCE_API}
        ${SOURCE_COMMON} 
    ) 

# 链接库，确保链接了 pthread
target_link_libraries(${TARGET} PRIVATE pthread)

# 设置输出路径
set_target_properties(${TARGET} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/../bin/)

# 确保bin目录存在，防止被spdloglib.h复制成为bin
if(NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/../bin/)
    file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/../bin/)
endif()

# 将头文件复制到输出目录
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/libspdlog/spdloglib.h ${CMAKE_CURRENT_SOURCE_DIR}/../bin/ COPYONLY)





