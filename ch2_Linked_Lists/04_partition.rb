# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    04_partition.rb                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/11 01:03:57 by lhernand          #+#    #+#              #
#    Updated: 2018/10/11 02:38:30 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin
Partition: Write code to partition a linked list around a value x, such that 
all nodes less than x come before all nodes greater than or equal to x. 
If x is contained within the list the values of x only need to be after the 
elements less than x (see below). The partition element x can appear anywhere 
in the "right partition"; it does not need to appear between the left and 
right partitions.

EXAMPLE
Input: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1[partition=5] 
Output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8
=end

class LinkedList 
	def	initialize
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
		begin
			 !@head
		rescue
			return ;
		end
		node = @head
		while node
			puts node.val
			node = node.next
		end
	end

	def partition(part)
		begin 
			!@head
		rescue 
			return ;
		end
		node = @head
		node_left = nil
		node_right = nil
		node_left_start = nil
		node_right_start = nil
		while node
			next_one = node.next 
			node.next = nil
			if node.val < part
				if node_left_start == nil
					node_left_start = node
					node_left = node_left_start
				else
					node_left.next = node
					node_left = node_left.next
				end
			elsif node.val >= part
				if node_right_start == nil
					node_right_start = node
					node_right = node_right_start
				else
					node_right.next = node
					node_right = node_right.next
				end
			end
			node = next_one
		end
		if node_left_start.nil?
			return node_right_start
		elsif node_right_start.nil?
			return node_left_start
		else
			node_right.next = nil
			node_left.next = node_right_start
		end
		return node_left
	end
end

class Node
	attr_accessor	:next
	attr_reader		:val

	def initialize(val)
		@next = nil
		@val = val
	end
	def to_s
		@val = val
	end
end


l  = LinkedList.new
puts "Creating a list"
l.insert(1)
l.insert(2)
l.insert(10)
l.insert(5)
l.insert(8)
l.insert(5)
l.insert(3)
puts "Printing it"
l.printit
puts "Paritinioning it"
l.partition(ARGV[0].to_i)
puts "Paritioned"
l.printit
