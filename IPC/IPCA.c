#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main() {
    int pipefd[2];
    pid_t pid;

    // 创建管道
    if (pipe(pipefd) == -1) {
        perror("pipe");
        exit(EXIT_FAILURE);
    }

    // 创建子进程
    pid = fork();

    if (pid == -1) {
        perror("fork");
        exit(EXIT_FAILURE);
    }

    if (pid == 0) {
        // 子进程关闭读端
        close(pipefd[0]);

        // 向管道写入消息
        char* message = "Hello, Process 2!";
        write(pipefd[1], message, strlen(message) + 1);

        // 关闭写端
        close(pipefd[1]);

        exit(EXIT_SUCCESS);
    } else {
        // 父进程关闭写端
        close(pipefd[1]);

        // 读取管道中的消息
        char buffer[1024];
        read(pipefd[0], buffer, sizeof(buffer));

        printf("Received message in Process 1: %s\n", buffer);

        // 关闭读端
        close(pipefd[0]);
    }

    return 0;
}
