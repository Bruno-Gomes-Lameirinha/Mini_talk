#include "../libft/libft.h"
#include <signal.h>

int main(void)
{
    ft_printf("PID: %d\n PID: %d\n", getpid(), getpid());
}