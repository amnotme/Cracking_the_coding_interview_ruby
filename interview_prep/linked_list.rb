# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    linked_list.rb                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/08 21:39:57 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 20:41:53 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
	
	def append_after(target, val)
		node = self.find(target)

		return if !node

		pre_next = node.next
		node.next = Node.new(val)
		node.next.next = pre_next
	end
	
	def find(val)
		node = @head
		return node if node.value == val
		return false if !node.next

		while (node && node.next)
			node = node.next 
			return node if node.value == val
		end
	end

	def delete(val)
		if @head.value == value
			@head = @head.next
			return 
		end
		
		node = find_before(value)
		node.next = node.next.next
	end

	def find_before(value)
		node = @head

		return false if !node.next
		return node if node.next.value == value

		while (node && node.next)
			node = node.next
			return node if node.next.next == value
		end
	end
	
	def print
		node = @head
		puts node

		while (node && node.next)
			node = node.next
			puts node.value
		end
	end
end



class Node
	attr_accessor 	:next
	attr_reader		:value

	def	initialize(value)
		@value = value
		@next = nil
	end

	def to_s
		return (value.to_s)
	end
end


list = LinkedList.new


list.append(1)
list.append(2)
list.append(3)


list.append_after(3,4)
list.append_after(4,5)

list.print
