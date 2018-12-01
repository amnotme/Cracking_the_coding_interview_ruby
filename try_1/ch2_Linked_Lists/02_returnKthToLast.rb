# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    02_returnKthToLast.rb                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/10 21:51:17 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 23:22:28 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin
Return Kth to Last: Implement an algorithm to find the kth to last 
element of a singly linked list.
=end


class LinkedList
	def initialize
		@head = nil
	end

	def insert(val)
		if !@head
			@head = Node.new(val)
		else
			node = Node.new(val)
			node.next = @head
			@head = node
		end
	end

	def printit
		return nil if @head.nil?
		node = @head
		while node && node.next 
			puts node.val
			node = node.next
		end
		puts node.val
	end

	def	findKth(num)
		return nil if @head.nil?
		node = @head
		i = 0
		while node.next
			i += 1
			node = node.next
		end
		return nil if num > i
		runner = @head
		while runner.next
			return runner if i == num
			i -= 1
			runner = runner.next
		end
		return nil
	end

	def findKthRecurs(node=@head, num)
		return 0 if node.nil?
		index = findKthRecurs(node.next, num) + 1
		#puts "this is my stack #{index} and its value #{node.val}"
		puts "this is the #{num}th to last element -> #{node.val}" if index == num	
		return index
	end

	def findKthIter(num)
		return 0 if @head.nil?
		node1 = @head
		node2 = @head
		for i in (0...num)
			return nil if node1.next == nil
			node1 = node1.next
		end

		while node1
			node1 = node1.next
			node2 = node2.next
		end
		node2.val
	end
end


class Node
	attr_reader		:val
	attr_accessor	:next
	def initialize(val)
		@next = nil
		@val = val
	end

	def to_s
		return (@val.to_s)
	end
end



l = LinkedList.new
for i in 10..20 
	l.insert(i)
end

l.printit
puts l.findKth(4)
l.findKthRecurs(4)
puts l.findKthIter(4)
