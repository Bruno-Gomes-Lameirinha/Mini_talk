/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgomes-l <bgomes-l@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/07/24 19:38:19 by bgomes-l          #+#    #+#             */
/*   Updated: 2023/07/27 18:27:15 by bgomes-l         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isdigit(int c);

int	ft_isdigit(int c)
{
	if (c < '0' || c > '9')
	{
		return (0);
	}
	return (1);
}
