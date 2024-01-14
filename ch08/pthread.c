#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

// Function to be executed by the threads
void *print_message(void *ptr) {
    char *message = (char *)ptr;
    printf("%s\n", message);

    // Exit the thread with a status (NULL in this case)
    pthread_exit(NULL);
}

int main() {
    // Create two threads
    pthread_t thread1, thread2;

    char *message1 = "Thread 1 is running";
    char *message2 = "Thread 2 is running";

    // Create and run thread 1
    if (pthread_create(&thread1, NULL, print_message, (void *)message1)) {
        fprintf(stderr, "Error creating thread 1\n");
        return 1;
    }

    // Create and run thread 2
    if (pthread_create(&thread2, NULL, print_message, (void *)message2)) {
        fprintf(stderr, "Error creating thread 2\n");
        return 1;
    }

    // Wait for threads to finish and get their exit status
    void *status1, *status2;
    if (pthread_join(thread1, &status1)) {
        fprintf(stderr, "Error joining thread 1\n");
        return 1;
    }

    if (pthread_join(thread2, &status2)) {
        fprintf(stderr, "Error joining thread 2\n");
        return 1;
    }

    printf("Both threads have finished\n");

    return 0;
}
