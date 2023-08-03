#!/bin/bash

lib_name=sqlite3
exe_name=demo_$lib_name
out_path=./build

function build_part() {
    rm $out_path/$exe_name.o 
    if [ ! -d "$out_path" ]; then
        mkdir $out_path
    fi
    cd $out_path
    rm -r *
    cmake ..
    make
    gcc ../$exe_name.c -I ../include -g -o $exe_name.o -L ./ -l$lib_name 
    #mv $exe_name.o $out_path
}

# base64
function build_base() {
    echo "build $exe_name"
    build_part
}

function run_base() {
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
