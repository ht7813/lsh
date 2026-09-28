#include "lsh.h"

int lsh_pwd(char **args)
{
    (void)args;
    char cwd[FILENAME_MAX];
    
    getcwd(cwd, sizeof(cwd));
    printf("%s\n", cwd);

    return 1;
}
