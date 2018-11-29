# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    linked_list2.rb                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/08 22:22:09 by lhernand          #+#    #+#              #
#    Updated: 2018/10/08 22:39:20 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



class Node
	attr_accessor :next
	attr_reader	  :value

	def initialize(val)
		@value = val
		@next = nil
	end

	def to_s
		return (node.to_s)
	end
end


class LinkedList
	def initialize
		@head = nil
	end

	def append(val)
		if @head
			new_head = Node.new(val)
			new_head.next = @head
			@head = new_head
		else
			@head = Node.new(val)
		end
	end
	
	def find(val)
		return false if !@head.next
		return @head if @head.value == val
	
		node = @head
		while (node && node.next)
			return node if node.value == val
			node = node.next
		end
	end

	def delete(val)
		@head.next = @head if @head.value == val
		return false if !@head
		
		node = @head
		while (node && node.next && node.next.next)
			break if node.next.value == val
			node = node.next
		end
		node.next = node.next.next
		
	end

	def print
		return false if !@head
		
		node = @head

		while (node && node.next)
			puts node.value
			node = node.next
		end
	end
end


list = LinkedList.new

(0..10).each do |num|
	list.append(num)
end

list.delete(5)
list.print



