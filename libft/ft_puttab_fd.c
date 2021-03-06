/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puttab_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmostert <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/14 10:23:08 by nmostert          #+#    #+#             */
/*   Updated: 2018/08/14 10:25:50 by nmostert         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_puttab_fd(char **s, int fd)
{
	int		i;
	int		j;

	if (!s)
		return ;
	i = 0;
	while (s[i] != 0)
	{
		j = 0;
		while (s[i][j] != '\0')
		{
			write(fd, &s[i][j], 1);
			j++;
		}
		i++;
		write(fd, "\n", 1);
	}
}
