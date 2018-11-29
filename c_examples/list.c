/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   list.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/07 21:36:59 by lhernand          #+#    #+#             */
/*   Updated: 2018/11/09 17:30:07 by lhernand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>

typedef	struct				s_list
{
	struct s_list			*next;
	void					*data;
}							t_list;

t_list	*ft_create_elem(void *data) //ex00
{
	t_list *new_elem;

	new_elem = NULL;
	new_elem = (t_list *)malloc(sizeof(t_list));
	new_elem->data = data;
	new_elem->next = NULL;
	return (new_elem);
}

void	ft_list_push_back(t_list **begin_list, void *data) //ex01
{
	t_list *iterador;

	if (*begin_list)
	{
		iterador = *begin_list;
		while (iterador->next)
		{
			iterador = iterador->next;
		}
		iterador->next = ft_create_elem(data);
	}
	else
	{
		*begin_list = ft_create_elem(data);
	}
}

void	ft_list_push_front(t_list **begin_list, void *data) //ex02
{
	t_list *nuevo_elemento;

	nuevo_elemento = ft_create_elem(data);
	nuevo_elemento->next = *begin_list;
	*begin_list = nuevo_elemento;
}

int		ft_list_size(t_list *begin_list) //ex03
{
	t_list		*elem;
	int 		i;

	elem = begin_list;
	i = 1;
	if (elem)
	{
		while (elem->next)
		{
			elem = elem->next;
			i++;
		}
		return (i++);
	}
	else
		return (i);
}

t_list		*ft_list_last(t_list *begin_list)//ex04
{
	t_list *elem;

	elem = begin_list;
	while (elem->next)
		elem = elem->next;
	return (elem);
}

t_list	*ft_list_push_params(int ac, char **av)//ex05
{
	t_list 	*list;
	int 	i;

	list = NULL;
	i = 1;
	if (av[i])
	{
		while (i < ac)
		{
			ft_list_push_front(&list, av[i]);
			i++;
		}
	}
	return (list);
}

void	ft_list_clear(t_list **begin_list)//ex06
{
	t_list *elem;
	t_list *next_elem;

	if (*begin_list)
	{
		elem = *begin_list;
		while (elem)
		{
			next_elem = elem->next;
			free(elem);
			elem = next_elem;
		}
	}
	*begin_list = NULL;
}

t_list		*ft_list_at(t_list *begin_list, unsigned int nbr)//ex07
{
	unsigned int	i;
	t_list 			*elem;

	i = 1;
	elem = begin_list;
	if (!begin_list)
		return (NULL);
	while (i < nbr)
	{
		if (!elem)
			return (NULL);
		elem = elem->next;
		i++;
	}
	return (elem);
}

void	ft_list_reverse(t_list **begin_list)//ex08
{
	t_list *curr;
	t_list *next;
	t_list *prev;

	curr = *begin_list;
	while (curr)
	{
		next = curr->next;
		curr->next = prev;
		prev = curr;
		curr = next;
	}
	*begin_list = prev;
}

void	func(void *data)
{
	printf("this is the func -> %s\n", data);
}

void	ft_list_foreach(t_list *begin_list, void (*f)(void *))//ex09
{
	while (begin_list)
	{
		(*f )(begin_list->data);
		begin_list = begin_list->next;
	}
}

int		ft_strcmp(char *s1, char *s2)
{
	int i;

	i = 0;
	while (*s1 && *s2)
	{
		if (*s1 != *s2)
			return (*s1 - *s2);
		s1++;
		s2++;
	}
	return (*s1 - *s2);
}

void	ft_list_foreach_if(t_list *begin_list, void (*f)(void *), \
							void *data_ref, int (*cmp)())//ex10
{
	while (begin_list)
	{
		if ((*cmp)(begin_list->data, data_ref) == 0)
			(*f )(begin_list->data);
		begin_list = begin_list->next;
	}
}

t_list	*ft_list_find(t_list *begin_list, void *data_ref, int (*cmp)())
{
	if (!begin_list)
		return (NULL);
	while (begin_list)
	{
		if ((*cmp)(begin_list->data, data_ref) == 0)
			return (begin_list);
		begin_list = begin_list->next;
	}
	return (NULL);
}

void	ft_print(t_list *list)
{
	t_list *iter;

	iter = list;
	if (!iter)
		return ;
	while (iter->next)
	{
		printf("%s\n", iter->data);
		iter = iter->next;
	}
	printf("%s\n", iter->data);
}

int		main(void)
//int			main(int ac, char **av)
{

	/*
	// ex00
	char *str;
	
	str = "this is a new element";
	printf("%s", ft_create_elem(str)->data);
	
	*/

	/*
	//ex01
	t_list *list;
	
	list = NULL;
	char *cadenas[] ={"one", "two", "three", "four", "five"};
	int i = 0;
	while (cadenas[i])
		ft_list_push_front(&list, cadenas[i++]);

	ft_print(list);
	*/

	/*
	//ex02
	t_list *list;

	list = NULL;
	char *cadenas[] ={"one", "two", "three", "four", "five"};
	int i = 0;
	while (cadenas[i])
		ft_list_push_front(&list, cadenas[i++]);
	ft_print(list);
	*/

	/*
	//ex03
	t_list *list;
	
	list = NULL;
	char *cadenas[] ={"one", "two", "three", "four", "five"};
	int i = 0;
	while (cadenas[i])
		ft_list_push_front(&list, cadenas[i++]);
	ft_print(list);
	printf("%d\n", ft_list_size(list));
	*/

	/*
	// ex04
	t_list *list;
	char *cadenas[] ={"one", "two", "three", "four", "five"};
	int i = 0;
	
	list = NULL;
	while (cadenas[i])
		ft_list_push_front(&list, cadenas[i++]);
	ft_print(list);
	printf("\n\n%s\n", (ft_list_last(list))->data);
	*/

	
	/*
	// ex05
	if (ac < 2)
		return (-1);
	else
		ft_print(ft_list_push_params(ac, av));
	*/


	/*
	// ex06
	t_list *list;

	char *cadenas[] ={"one", "two", "three", "four", "five"};
	int i = 0;
	
	list = NULL;
	while (cadenas[i])
		ft_list_push_front(&list, cadenas[i++]);
	ft_print(list);
	ft_list_clear(&list);
	ft_print(list);
	*/

	/*
	//ex07
	t_list *list;
	t_list *elem;

	char *cadenas[] ={"one", "two", "three", "four", "five"};
	int i = 0;
	
	list = NULL;
	while (cadenas[i])
		ft_list_push_front(&list, cadenas[i++]);
	ft_print(list);
	
	elem = ft_list_at(list, 3);
	if (!elem)
		return (-1);
	else
		printf("\n\n%s\n", elem->data);

	elem = ft_list_at(list, 4);
	if (!elem)
		return (-1);
	else
		printf("%s\n", elem->data);

	elem = ft_list_at(list, 5);
	if (!elem)
		return (-1);
	else
		printf("%s\n", elem->data);

	elem = ft_list_at(list, 6);
	if (!elem)
		return (-1);
	else
		printf("%s\n", ft_list_at(list, 6)->data);
	*/

	/*
	//ex08
	t_list *list;

	char *cadenas[] ={"one", "two", "three", "four", "five"};
	int i = 0;
	
	list = NULL;
	while (cadenas[i])
		ft_list_push_back(&list, cadenas[i++]);
	ft_print(list);
	ft_list_reverse(&list);
	ft_print(list);
	*/

	/*
	//ex09
	t_list *list;

	char *cadenas[] ={"one", "two", "three", "four", "five"};
	int i = 0;
	
	list = NULL;
	while (cadenas[i])
		ft_list_push_back(&list, cadenas[i++]);
	ft_print(list);
	ft_list_foreach(list, &func);
	*/
	
	/*
	//ex10
	t_list *list;

	char *cadenas[] ={"one", "two", "three", "four", "five"};
	int i = 0;
	
	list = NULL;
	while (cadenas[i])`
		ft_list_push_back(&list, cadenas[i++]);
	ft_print(list);
	ft_list_foreach_if(list, &func, "three", &ft_strcmp);
	*/

	/*
	//ex11
	*/

	t_list *list;
	t_list *ret;

	char *cadenas[] = {"one", "two", "three", "four", "five"};
	int i = 0;
	list = NULL;
	ret = NULL;
	while(cadenas[i])
		ft_list_push_back(&list, cadenas[i++]);
	printf("this is the ret -> %p %s\n", list , list->data);
	ret = ft_list_find(list, "four", &ft_strcmp);
	printf("this is the ret -> %p %s\n", ret, ret->data);
	return (0);
}
