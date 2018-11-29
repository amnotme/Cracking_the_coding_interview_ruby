/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   factorial_recursive.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/26 15:18:33 by lhernand          #+#    #+#             */
/*   Updated: 2018/09/26 15:20:07 by lhernand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>

int			factorial_recursivce(int n)
{
	if (n <= 1)
		return (1);
	return (n * factorial_recursivce(n - 1));
}

int			main(int argc, char **argv)
{
	if (argc != 2)
		return (-1);
	printf("factorial_recursivce [%d]\n", factorial_recursivce(atoi(argv[1])));
	return (0);
}
