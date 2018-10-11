# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    03_deleteMiddleNode.rb                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/10 23:24:00 by lhernand          #+#    #+#              #
#    Updated: 2018/10/11 01:02:31 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin
Delete Middle Node: Implement an algorithm to delete a node in the middle 
(i.e., any node but the first and last node, not necessarily the exact middle) 
of a singly linked list, given only access to that node.

EXAMPLE

lnput:the node c from the linked list a->b->c->d->e->f

Result: nothing is returned, but the new linked list looks like a->b->d->e->f
=end


class LinkedList
	def initialize
		@head = nil
	end

	def insert(val)
		if @head
			node = Node.new(val)
			node.next = @head
			@head = node
		else
			@head = Node.new(val)
		end
	end

	def printit
		return nil if @head.nil?
		node = @head
		while node
			puts node.val
			node = node.next
		end
	end

	def deleteMiddle
		begin
			@head.nil? || @head.next.next.next.nil?
		rescue
			return ;
		end
		node1 = @head
		node2 = @head.next

		while node2 && node2.next && node2.next.next
			node1 = node1.next
			node2 = node2.next.next
		end
		node1.next = node1.next.next
	end

	def deletePassedNode(node)
		begin
			node.nil? || node.next.nil?
		rescue
			return ;
		end
		temp = node.next
		node.val = temp.val
		node.next = temp.next
		return true
	end

end

class Node
	attr_reader		:val
	attr_accessor	:next

	def initialize(val)
		@val = val
		@next = nil
	end

	def to_s
		return (@val.to_s)
	end
end

l = LinkedList.new

(0..10).each do |num|
	l.insert(num)
end


puts "initial print"
l.printit
puts "deleting middle"
l.deleteMiddle
puts "after deletion"
l.printit
