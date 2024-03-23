#include "lenv.h"

extern char **environ;
void get(const char *_env) {
    puts(getenv(_env));

    //exit(0);
}

void set(const char *_name, const char *_value) {
    if(setenv(_name, _value, 1) == 0)
    {
        printf("Set env %s to %s\n",_name , _value);
    }else{
        fprintf(stderr, "Set Failled!\n");
    }

    //exit(0);
}

int lsh_lenv(char **args)
{
    //printf("%d", argc);
    if (!strcmp(args[1], "--list") || !strcmp(args[1], "-l"))
    {
        list_all();
    }else if (!strcmp(args[1], "--get")) {
        get(args[2]);
    }else if (!strcmp(args[1], "--set")) {
        set(args[2], args[3]);
    }else if (!strcmp(args[1], "--help") || !strcmp(args[1], "-h"))
    {
        help(0);
    }else{
        help(1);
    }

    return 1;
}

int list_all()
{
    int i = 0;
    for (i = 0;environ[i] != NULL;i++)
    {
        puts(environ[i]);
    }

    //exit(0);

}

int help(int err)
{
    if (err == 1) {
        fprintf(stderr, "%s: Arguments error!\n", APP_NAME);
    }
    printf("%s version 1.0\n", APP_NAME);
    printf("Usege: %s option... [value]\n", APP_NAME);
    printf("Options:\n");
    printf("-h, --help      Show this help\n");
    printf("-l, --list      List all env(s)\n");
    printf("    --get       Get a env value\n");
    printf("    --set       Change or Add a env's value\n");

    //exit(err);
}
