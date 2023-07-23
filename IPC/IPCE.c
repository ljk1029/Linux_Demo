#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>

#define SHM_SIZE 1024

int main() {
    key_t key = ftok("shared_memory", 1234);
    // if (key == -1) {
    //     perror("ftok");
    //     exit(EXIT_FAILURE);
    // }

    int shmid = shmget(key, SHM_SIZE, IPC_CREAT | 0666);
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
        printf("Enter message to send (or 'q' to quit): ");
        fgets(shmaddr, SHM_SIZE, stdin);

        if (strcmp(shmaddr, "q\n") == 0) {
            break;
        }

        printf("Message sent: %s", shmaddr);
    }

    printf("Message written by Process 1: %s\n", shmaddr);
    shmdt(shmaddr);
    shmctl(shmid, IPC_RMID, NULL);

    return 0;
}
