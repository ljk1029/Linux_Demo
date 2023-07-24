/*
 * 文件名: component.c
 * 作者: ljk
 * 创建时间: 2023-07-20
 * 文件描述: 开源小组件操作
 */
#include "spdloglib.h"

#define LOG_PATH  "./"

int main(int argc, char* argv[])
{
	set_console_logger(true);     // 客户端打印
	set_file_write_logger(true);  // 写入文件
    set_file_logger(LOG_PATH, 5*1024*1024, 2);  //设置日志文件存储路径、大小、滚动个数
	set_level(0);

    // 日志记录
	log_v("idps version","360 Autocare DR V1.2"); 
    model_log_d("newlog","idps version","360 Autocare DR V1.2");

	return 0;
}