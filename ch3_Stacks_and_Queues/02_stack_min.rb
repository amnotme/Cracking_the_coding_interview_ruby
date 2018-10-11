# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    02_stack_min.rb                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/11 04:08:04 by lhernand          #+#    #+#              #
#    Updated: 2018/10/11 04:10:01 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    02_stack_min.rb                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/11 03:17:19 by lhernand          #+#    #+#              #
#    Updated: 2018/10/11 04:07:09 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

class Stack
	attr_accessor :stackMin
	def initialize
		@top = nil
		@stackMin = -1.0 / 1.0
	end

	def push(el)
		if !@top
			@top = Node.new(el, el)
			@stackMin = el
		else
			node = Node.new(el, @stackMin)
			@stackMin = node.peekMin
			node.next = @top
			@top = node
		end
	end

	def pop
		@top = @top.next
		@stackMin = @top.min
	end

	def peek
		return @top.val
	end

	def min
		return @stackMin
	end
	def printit
		begin
			@top.nil?
		rescue
			return ;
		end
		node = @top
		while node
			puts node.to_s
			node = node.next
		end
	end
end

class Node
	attr_accessor  :next, :min
	attr_reader		:val

	def 	initialize(val, min)
		@val = val
		if val < min
			@min = val
		else
			@min = min
		end
	end

	def		peekMin
		return @min
	end

	def to_s
		return ("val -> #{@val} and min -> #{@min}") 
	end
end


s = Stack.new

s.push(10)
s.push(100)
s.push(6)
s.push(7)
s.push(2)
s.push(1)
s.push(70)
s.push(-1)
s.push(666)

s.printit

