#include <stdio.h>
#include <stdlib.h>

int main() {
    // First allocation - 100 bytes
    char* ptr = (char*)malloc(100);
    
    // Use the memory
    sprintf(ptr, "Hello World");
    printf("First allocation: %s\n", ptr);
    
    // Oops! We allocate new memory but overwrite the pointer
    // without freeing the first allocation
    // The first 100 bytes are now leaked - no way to access or free them
    ptr = (char*)malloc(50);
    
    sprintf(ptr, "Goodbye");
    printf("Second allocation: %s\n", ptr);
    
    // We can only free the second allocation
    free(ptr);
    
    return 0;
    // The first 100 bytes are still allocated but lost forever
} 