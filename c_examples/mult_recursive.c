/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mult_recursive.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/26 15:11:45 by lhernand          #+#    #+#             */
/*   Updated: 2018/09/26 15:13:28 by lhernand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>

int			mult_recursive(int n)
{
	if (n <= 1)
		return (1);
	return (n * mult_recursive(n - 1));
}

int			main(int argc, char **argv)
{
	if (argc != 2)
		return (-1);
	printf("mult_recursive [%d]\n", mult_recursive(atoi(argv[1])));
	return (0);
}
