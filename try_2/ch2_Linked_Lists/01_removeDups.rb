class Node 
	attr_accessor :next
	attr_reader :val
	
	def initialize(val)
		@val = val;
		@next = nil;
	end

	def to_s
		return @val.to_s
	end
end

class LinkedList 

	def initialize
		@head = nil
	end

	def insert(val)
		if @head
			node = Node.new(val);
			node.next = @head;
			@head = node;
		else
			@head = Node.new(val);
		end
	end
	
	def printit
		node = @head
		while node && node.next
			print "#{node.val}"
			node = node.next
		end
	end

	def removeDups
		return nil if @head.nil?
		current = @head

		while current
			running = current
			while running.next
				if running.next.val == current.val
					running.next = running.next.next;
				else
					running = running.next;
				end
			end
			current = current.next;
		end
	end
end



list = LinkedList.new

i = 0;
while i <= 20
	list.insert(rand(i))
	i += 1
	list.insert(rand(10))
end

list.removeDups
puts "Removed dups"
list.printit
puts "Print after dups"

