#include <unistd.h>
#include <stdio.h>

void foo() {
    char buf[1024] = {0};
    int fd = open("flag",0);
    read(fd, buf, 1024);
    close(fd);
    printf("FLAG: %s\n", buf);
}

int main() {
    printf("EUID : %d, EGID: %d\n", geteuid(), getegid());
    foo();
    system("cat flag");
    system("/bin/sh");
    return 0;
}
