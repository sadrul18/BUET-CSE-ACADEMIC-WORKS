#include "kernel/types.h"
#include "user/user.h"

int main(int argc, char *argv[])
{
    int var =100;
    int d = hello(&var);
    printf("hello returned %d\n", d);
    printf("after syscall var %d\n", var);
    exit(0);
}