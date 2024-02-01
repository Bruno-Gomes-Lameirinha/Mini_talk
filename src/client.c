/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgomes-l <bgomes-l@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/01 18:36:09 by bgomes-l          #+#    #+#             */
/*   Updated: 2024/02/01 18:47:40 by bgomes-l         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft/libft.h"
#include <signal.h>

int		g_setexit = 0;

int	main(int argc, char **argv)	
{
	char	*msg;

	if (argc == 3)
	{
		msg = argv[2];
		argc = ft_atoi(argv[1]);
	}
	else
	{
		ft_printf("Wrong number of arguments: Expected 3, have %d", argc);
		exit(1);
	}
}
