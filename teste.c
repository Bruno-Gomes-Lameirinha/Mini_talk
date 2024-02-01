# include "./libft/libft.h"
int main()
{
	int	j;
	char currentChar = 'H'; // O caractere 'H' em ASCII é 72 (01001000 em binário)

// Loop para percorrer cada bit de 'H'
	j = 7;
	while (j >= 0) 
	{
		int bit = (currentChar >> j) & 1; // Extrai o bit atual de 'H'
		ft_printf("%d", bit); // Imprime o bit atual
		j--;
	}
	ft_printf("\n"); // Imprime o bit atual
}
