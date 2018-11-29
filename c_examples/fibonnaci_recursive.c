/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fibonnaci_recursive.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/26 15:47:31 by lhernand          #+#    #+#             */
/*   Updated: 2018/09/26 15:56:19 by lhernand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>

int			fib_recursive(int n)
{
	if (n == 1 || n == 2)
		return (1);
	if (n == 0)
		return (0);
	return (fib_recursive(n - 1) + fib_recursive(n - 2));
}

int			main(int argc, char **argv)
{
	if (argc != 2)
		return (-1);
	printf("fib_recursive [%d]\n", fib_recursive(atoi(argv[1])));
	return (0);
}
