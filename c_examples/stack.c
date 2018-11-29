/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   stack.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/21 21:53:14 by lhernand          #+#    #+#             */
/*   Updated: 2018/11/07 21:36:46 by lhernand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>


struct s_node {
	void          *content;
	struct s_node *next;
};

struct s_stack {
	struct s_node *top;
};

int isEmpty(struct s_stack *stack)
{
	return (!stack);
}

struct s_stack *init(void)
{
	struct s_stack *new = NULL;
	
	
	if(!(new = malloc(sizeof(struct s_stack))))
		return (NULL);
	bzero(new, sizeof(struct s_node));
	if(!(new->top = malloc(sizeof(struct s_node ))))
		return (NULL);
	bzero(new->top, sizeof(struct s_node));
	new->top->next = NULL;
	return (new);
}

void *pop(struct s_stack *stack)
{
	void *val;


	if (isEmpty(stack))
		return (NULL);
	struct s_node *temp_stack;
	temp_stack = stack->top;
	val = temp_stack->content;
	stack->top = stack->top->next;
	free(temp_stack);
	return (val);
}

void push(struct s_stack *stack, void *content)
{
	
	
	struct s_node *new = NULL;
	new = malloc(sizeof(struct s_node));
	bzero(new, sizeof(struct s_node));
	new->content = content;
	new->next = stack->top;
	stack->top = new;
}

void *peek(struct s_stack *stack)
{
	void *val;

	if (isEmpty(stack))
		return (NULL);
	val = stack->top->content;
	return (val);
}

int main(void)
{	
	struct s_stack *head = init();
	struct s_node *temp = NULL;

	temp = malloc(sizeof(struct s_node));
	bzero(temp, sizeof(struct s_node));
	temp->next = NULL;

	push(head, "what");
	push(head, "the");
	push(head, "hell");
	push(head, "hell");
	push(head, "hell");
	push(head, "hell");
	push(head, "hell");
	push(head, "hell");
	push(head, "hell");
	
	while (head && head->top && head->top->next)	
		printf("this is head->[%s]\n", pop(head));	
	return (0);
}


