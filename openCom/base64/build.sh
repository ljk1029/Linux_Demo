#!/bin/bash

exe_name=demo_base64
out_path=../build

function build_part() {
    echo "build $exe_name"
    rm $out_path/$exe_name.o 
    gcc $exe_name.c  base64.c -I ./ -g -o $exe_name.o 
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

function usage() {
    echo "[I] Usage: [sh $0 cmd]"
    echo '1  build $exe_name'
	echo '2  run   $exe_name'  
}

# main
if [ $# = 0 ]; then
    usage
else
    if [ $1 == 'b' ]; then
        build_base
    elif [ $1 == 'r' ];then
        run_base
    fi
fi
