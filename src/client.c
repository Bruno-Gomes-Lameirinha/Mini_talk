#include "../libft/libft.h"
#include <signal.h>

int main(int argc, char **argv)
{
    char    *msg;
    
    if (argc == 3)
    {
        msg = argv[2];
        argc = ft_atoi(argv[1]);
    }
    ft_printf("msg é %s\n", msg);
    ft_printf("argc é %d\n", argc);

}