/*
 * 文件名: client.c
 * 作者: ljk
 * 创建时间: 2023-07-22
 * 文件描述: UDP通信客户端
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <pthread.h>
#include "../tcp/common.h"



// 客户端 运行状态 0：准备 1：运行 2：连接成功
static int client_run_flag = 0;
// 全局客户端通信描述符
static int fd = 0;
static struct sockaddr_in* serv_addr;

// TCP client 连接
static int tcpClient(char* ip, int port) 
{
    int client_fd = -1;
    struct sockaddr_in server_addr;
    char buffer[MAX_BUFFER_SIZE] = {0};

    // 创建套接字
    if ((client_fd = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {
        printf("\n Socket creation error \n");
        goto EXIT;
    }

    // 设置服务器地址和端口号
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);
    server_addr.sin_addr.s_addr = inet_addr(ip);

    fd = client_fd;
    client_run_flag = 2;
    serv_addr = &server_addr;
    printf("UDP client is listening...\n");
    // 发送数据
    while (client_run_flag)
    {
        // 客户端不用保存 服务端地址端口
        ssize_t numbytes = udp_event_recv(client_fd, buffer, MAX_BUFFER_SIZE, NULL, NULL);
        if (numbytes <= 0)
        {  
            fprintf(stderr,"UDP server close!\n");
            exit(EXIT_FAILURE);
        } 
    }

EXIT:
    fprintf(stdout, "UDP client exit\n");
    close(client_fd);
    client_run_flag = 0;
    fd = -1; 
    return 0;
}

// client 创建接收线程
void* thread_handle_Client(void* arg)
{
    pthread_detach(pthread_self());
    if(client_run_flag == 0)
    {
        client_run_flag = 1;
        tcpClient(SERVER_ADDRESS, SERVER_PORT);
    }
}

// 输入发送字符串
static int input_send()
{
    sleep(1);
    while(client_run_flag == 2)
    {
        char msg[255];
        scanf("%s", msg); 
        //sent to the server
        size_t ret = udp_event_send(fd, (const void *)msg, strlen(msg), serv_addr, sizeof(struct sockaddr_in));
    }
    return 0;
}

// 测试程序
int main()
{
    pthread_t thread_id;
    pthread_create(&thread_id, NULL, thread_handle_Client, NULL);
    for(;;)
    {
        input_send();
        //sleep(10);
    }

    return 0;
}