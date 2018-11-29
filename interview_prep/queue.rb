# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    queue.rb                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/09 11:08:51 by lhernand          #+#    #+#              #
#    Updated: 2018/10/09 12:42:24 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

class Queue

	def initialize
		@first = nil
		@last = nil
	end

	def enqueue(val)
		if @first.nil?
			@last = Node.new(val)
			@first = @last
		else
			@last.next = Node.new(val)
			@last = @last.next
		end
	end

	def dequeue
		return false if @first.nil?
		o_first = @first
		@first = @first.next
		@last = nil if @first.nil?
		return o_first	
	end

	def print
	 return false if @first.nil?
		while (@first && @first.next)
			puts @first.val
			@first = @first.next
		end
	end
end

class Node
	attr_accessor  	:next
	attr_reader		:val

	def initialize(val)
		@val = val
		@next = nil
	end

	def to_s
		return (@val.to_s)
	end
end


q = Queue.new

q.enqueue(10)
q.enqueue(20)
q.enqueue(30)
q.enqueue(40)
q.enqueue(50)
q.enqueue(60)
q.enqueue(70)

q.print

