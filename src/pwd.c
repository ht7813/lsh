#include "lsh.h"

int lsh_pwd(char **args)
{
    char cwd[FILENAME_MAX];
    
    getcwd(cwd, sizeof(cwd));
    if (cwd == NULL) {
        perror("Get failed!");
	//return -1;
    }else{
        printf("%s\n", cwd);
    }

    return 1;
}
