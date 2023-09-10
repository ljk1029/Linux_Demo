#!/bin/bash

lib_path=../src/libsqlite3/build
lib_name=sqlite3
exe_name=demo_$lib_name
out_path=../build


#sqlite3
function build_part() {
    rm $out_path/$exe_name.o 
    if [ ! -d "$out_path" ]; then
        mkdir $out_path
    fi
    gcc $exe_name.c -I . -g -o $exe_name.o -L ./ -l$lib_name 
    mv $exe_name.o $out_path
}

# sqlite3
function build_lib_sqlite3() {
    cd $lib_path
    echo "build lib$exe_name"
    rm -r *
    cmake ..
    make
    cp lib$lib_name.a ../../../$lib_name
    cp ../include/mysqlite.h ../../../$lib_name
    cp ../include/sqlite3.h  ../../../$lib_name
}

# sqlite3
function build_sqlite3() {
    echo "build $exe_name"
    build_part
}

function run_sqlite3() {
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
        build_sqlite3
    elif [ $1 == 'r' ];then
        run_sqlite3
     elif [ $1 == 'l' ];then
        build_lib_sqlite3
    fi
fi
