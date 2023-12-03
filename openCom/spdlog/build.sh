#!/bin/bash

lib_path=../src/libspdlog/build
lib_name=spdlog
exe_name=${lib_name}_test
out_path=../build

function build_part() {
    rm $out_path/$exe_name.o 
    if [ ! -d "$out_path" ]; then
        mkdir $out_path
    fi
    gcc $exe_name.c -I . -g -o $exe_name.o -L ./ -l$lib_name -lstdc++
    mv $exe_name.o $out_path
}

# spdlog
function build_lib_spdlog() {
    cd $lib_path
    echo "build lib$exe_name"
    rm -r *
    cmake ..
    make
    cp lib$lib_name.a ../../../$lib_name
    cp ../spdloglib.h ../../../$lib_name
}

function build_spdlog() {
    echo "build $exe_name"
    build_part
}

function run_spdlog() {
    echo "run $exe_name"
    $out_path/$exe_name.o  
}

#usage
function usage() {
    echo "[I] Usage: [sh $0 cmd]"
    echo 'l  build ' $exe_name
    echo 'b  build ' $exe_name
	echo 'r  run   ' $exe_name
}


# main
if [ $# = 0 ]; then
    usage
else
    if [ $1 == 'b' ]; then
        build_spdlog
    elif [ $1 == 'r' ];then
        run_spdlog
    elif [ $1 == 'l' ];then
        build_lib_spdlog
    fi
fi
