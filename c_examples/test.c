/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/29 21:58:04 by lhernand          #+#    #+#             */
/*   Updated: 2018/10/29 22:04:59 by lhernand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdio.h>

char			*ft_strncpy(char *dest, char *src, unsigned int n)
{
	char			*s;
	unsigned int	i;

	i = 0;
	s = dest;
	while ((*src != '\0') && (i != n))
	{
		*dest++ = *src++;
		i++;
	}
	dest = s;
	return (dest);
}

int		main(void)
{

	char str1[] = "where is waldo";
	char str3[] = "where is waldo";

	char str2[] = "here he is";
	char str4[] = "here he is";

	printf("%s\n", strncpy(str1, str2, 5));
	printf("%s\n", ft_strncpy(str3, str4, 5));
	return (0);
}
