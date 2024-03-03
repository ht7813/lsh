#include <stdio.h>
#include <unistd.h>

int main()
{
    char cwd[FILENAME_MAX];
    
    getcwd(cwd, sizeof(cwd));
    if (cwd == NULL) {
        perror("Get failed!");
	return -1;
    }else{
        printf("%s\n", cwd);
    }

    return 0;
}
