#!/bin/bash

exe_name=component
out_path=../build

function build_test() {
    echo "build $exe_name"
    rm $out_path/$exe_name.o 
    gcc $exe_name.c ./base64/base64.c ./cjson/cJSON.c -I ../ -g -o $exe_name.o 
    if [ ! -d "$out_path" ]; then
        mkdir $out_path
    fi
    mv $exe_name.o $out_path
}

function run_test() {
    echo "run $exe_name"
    ../build/$exe_name.o  
}

function usage() {
    echo "[I] Usage: [sh $0 cmd]"
    echo 'b  build test'
	echo 'r  run test' 
}

# main
if [ $# = 0 ]; then
    usage
else
    if [ $1 == 'b' ]; then
        build_test
    elif [ $1 == 'r' ];then
        run_test
    fi
fi