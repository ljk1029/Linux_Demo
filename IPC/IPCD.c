#include <stdio.h>
#include <stdlib.h>
#include <string.h>
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

    printf("Message read by Process 2: %s\n", shmaddr);

    shmdt(shmaddr);

    // 最后一个进程分离后，删除共享内存段
    struct shmid_ds shmid_ds;
    if (shmctl(shmid, IPC_STAT, &shmid_ds) == -1) {
        perror("shmctl");
        exit(EXIT_FAILURE);
    }
    if (shmid_ds.shm_nattch == 0) {
        if (shmctl(shmid, IPC_RMID, NULL) == -1) {
            perror("shmctl");
            exit(EXIT_FAILURE);
        }
        printf("Shared memory segment deleted.\n");
    }
    return 0;
}
