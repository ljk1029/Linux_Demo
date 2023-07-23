#include <stdio.h>
#include <stdlib.h>
#include <sys/ipc.h>
#include <sys/shm.h>

#define SHM_SIZE 1024

int main() {
    key_t key = ftok("shared_memory", 1234);
    int shmid = shmget(key, SHM_SIZE, 0666);
    if (shmid == -1) {
        perror("shmget");
        exit(EXIT_FAILURE);
    }

    char* shmaddr = shmat(shmid, NULL, 0);
    if (shmaddr == (char*)-1) {
        perror("shmat");
        exit(EXIT_FAILURE);
    }

    while (1) {
        if (shmaddr[0] != '\0') {
            printf("Received message: %s", shmaddr);
            shmaddr[0] = '\0'; // 清空共享内存中的数据
        }
    }

    shmdt(shmaddr);

    return 0;
}
