#cmake_minimum_required(VERSION 3.12)
cmake_minimum_required(VERSION 3.4.1)
project(Spdloglib)

set(CMAKE_CXX_STANDARD 11)

#appoint chain
#SET(CMAKE_SYSTEM_NAME Linux)
#SET(TOOLCHAIN_DIR "/home/daan/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf")
#set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/bin/arm-linux-gnueabihf-g++)
#set(CMAKE_C_COMPILER   ${TOOLCHAIN_DIR}/bin/arm-linux-gnueabihf-gcc)
#set(GNU_FLAGS "-mfpu=vfp -fPIC")
#set(CMAKE_CXX_FLAGS "${GNU_FLAGS} ")
#set(CMAKE_C_FLAGS "${GNU_FLAGS}  ")
#SET(CMAKE_FIND_ROOT_PATH  ${TOOLCHAIN_DIR}
# ${TOOLCHAIN_DIR}/arm-linux-gnueabihf/include
# ${TOOLCHAIN_DIR}/arm-linux-gnueabihf/lib )


include_directories(include
        include/adapter)

add_library(spdlog
	STATIC
        spdloglib.cpp
        adapter/BussinessLogger.cpp
        adapter/LoggerContainer.cpp
        adapter/ManageLogger.cpp
        adapter/ModelLogger.cpp
        adapter/ConsoleLoggerFactory.cpp
        adapter/FileLoggerFactory.cpp
        )

