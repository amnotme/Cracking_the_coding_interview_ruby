/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/30 19:29:08 by lhernand          #+#    #+#             */
/*   Updated: 2018/09/30 19:34:47 by lhernand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>

int		main(void)
{
	char *str = malloc(sizeof(char) * 20);
	int i = 0;
	char c = 'a';
	while (i < 10)
		str[i++] = c++;
	str[i] = '\0';


	printf("this is what we have here->[%s]\n", str);
	str = str + 5;
	printf("this is what we have here->[%c]\n", *(str));
	free(str);
	printf("this is what we have here->[%s]\n", (str));
	return (0);
}
