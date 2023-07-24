#!/bin/bash

exe_name=component
out_path=../build

function build_part() {
    echo "build $exe_name"
    rm $out_path/$exe_name.o 
    gcc $exe_name.c ./base64/base64.c ./cjson/cJSON.c -I ../ -g -o $exe_name.o 
    if [ ! -d "$out_path" ]; then
        mkdir $out_path
    fi
    mv $exe_name.o $out_path
}

# base64
function build_base() {
    exe_name=demo_base64
    build_part
}

function run_base() {
    exe_name=demo_base64
    echo "run $exe_name"
    $out_path/$exe_name.o  
}

# cjson
function build_cjson() {
    exe_name=demo_cjson
    build_part
}

function run_cjson() {
    exe_name=demo_cjson
    echo "run $exe_name"
    $out_path/$exe_name.o  
}

function build_lib() {
    cd ./$lib_name/
    #rm -r build
    mkdir build
    cd build
    cmake ..
    make
    if [ ! -d "../../$lib_name" ]; then
        mkdir ../../$lib_name
    fi
    cp lib$lib_name.a ../../$out_path

    cd ../../
    gcc $exe_name.c -I ./$lib_name/ -I ./$lib_name/include -g -o $exe_name.o -L $out_path -l$lib_name -lstdc++
    mv $exe_name.o $out_path
}

# spdlog
function build_spdlog() {
    exe_name=demo_spdlog
    lib_name=spdlog
    build_lib
}

function run_spdlog() {
    exe_name=demo_spdlog
    echo "run $exe_name"
    $out_path/$exe_name.o  
}

# sqlite
function build_sqlite() {
    exe_name=demo_sqlite
    lib_name=sqlite3
    build_lib
}

function run_sqlite() {
    exe_name=demo_sqlite
    echo "run $exe_name"
    $out_path/$exe_name.o  
}

function usage() {
    echo "[I] Usage: [sh $0 cmd]"
    echo '1  build base'
	echo '2  run   base' 
	echo '3  build cjson' 
	echo '4  run   cjson' 
	echo '5  build spdlog' 
	echo '6  run   spdlog' 
	echo '7  build sqlite' 
	echo '8  run   sqlite' 
}

# main
if [ $# = 0 ]; then
    usage
else
    if [ $1 == '1' ]; then
        build_base
    elif [ $1 == '2' ];then
        run_base
    elif [ $1 == '3' ];then
        build_cjson
    elif [ $1 == '4' ];then
        run_cjson
    elif [ $1 == '5' ];then
        build_spdlog
    elif [ $1 == '6' ];then
        run_spdlog
    elif [ $1 == '7' ];then
        build_sqlite
    elif [ $1 == '8' ];then
        run_sqlite
    fi
fi