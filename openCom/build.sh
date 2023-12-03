#!/bin/bash

current_directory=$(pwd)
echo "Current Directory: $current_directory"
out_path=$current_directory/build
bin_path=$current_directory/bin

cd $out_path
#cmake ..
#make

cd $bin_path
$bin_path/mybase64
sleep 3
$bin_path/mycjson
sleep 3
$bin_path/myspdlog
sleep 3
$bin_path/mysqlite
sleep 3
$bin_path/myzlog