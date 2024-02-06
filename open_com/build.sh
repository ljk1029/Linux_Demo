#!/bin/bash

current_directory=$(pwd)
echo "Current Directory: $current_directory"
out_path=$current_directory/build
bin_path=$current_directory/bin


# 构建代码
function build() {
    echo "Building..."
     # 如果 out_path 不存在，则创建
    if [ ! -d "$out_path" ]; then
        mkdir -p "$out_path"
    fi
    cd $out_path
    cmake ..
    make
}

#重新构建代码
function rebuild() {
    echo "ReBuilding..."
    # 如果 out_path 不存在，则创建
    if [ -d "$bin_path" ]; then
        rm -rf $bin_path
    fi
    mkdir $bin_path
    rm_build
    build
}

# 删除构建
function rm_build() {
    echo "Removing build directory"
    if [ -d "$bin_path" ]; then
        rm -rf $bin_path
    fi
}

# 运行
function run_app() {
    echo "Running applications..."
    cd $bin_path
    ./myapp

    $bin_path/my_base64
    sleep 3
    $bin_path/my_cjson
    sleep 3
    $bin_path/my_spdlog
    sleep 3
    $bin_path/my_sqlite
    sleep 3
    $bin_path/my_zlog
}

# 根据输入参数执行相应的选项
case "$1" in
    "build")
        build
        ;;
    "rebuild")
        rebuild
        ;;
    "clean")
        rm_build
        ;;
    "run")
        run_app
        ;;
    "all")
        rebuild
        rm_build
        run_app
        ;;
    *)
        echo "Usage: $0 {build|rebuild|clean|run|all}"
        exit 1
        ;;
esac

exit 0
