# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    01_removeDups.rb                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/10 20:24:17 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 21:50:48 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin

Remove Dups: Write code to remove duplicates from an unsorted linked list. 

FOLLOW UP
How would you solve this problem if a temporary buffer is not allowed?

=end

class LinkedList
	def initialize
		@head = nil
	end
	
	def insert(val)
		if  @head
			node = Node.new(val)
			node.next = @head
			@head = node
		else
			node = Node.new(val)
			@head = Node.new(val)
		end
	end

	def printit
		node = @head
		while node && node.next
			puts node.val
			node = node.next
		end
	end
	
	def removeDups
		return nil if @head.nil?
		current = @head
		while current
			running_man = current
			while running_man.next
				if running_man.next.val == current.val
					running_man.next = running_man.next.next
				else
					running_man = running_man.next
				end
			end
			current = current.next
		end
	end

end

class Node
	attr_accessor 	:next
	attr_reader		:val
	
	def initialize(val)
		@val = val
		@next = nil
	end

	def to_s
		return (@val.to_s)
	end

end

list = LinkedList.new

i = 0
while i <= 10
	list.insert(rand(i))
	i += 1
	list.insert(rand(10))
end

list.printit
puts "Removing dups"
list.removeDups
puts "Removed dups"
list.printit
puts "Print after dups"
