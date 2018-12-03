class Node 
	attr_accessor :next
	attr_reader   :val

	def initialize(val)
		@val = val
		@next = nil
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
			node = Node.new(val)
			node.next = @head
			@head = node
		else
			@head = Node.new(val)
		end
	end

	def prinit
		node = @head
		
		while node && node.next
			puts node.val
			node = node.next
		end
	end

	def size
		current = @head
		i = 0
		while current.next
			i += 1
			current = current.next
		end
		return (i)
	end

	def findKth(num)
		return nil if @head.nil?
		node = @head
		len = node.size

		return nil if num > len
		runner = @head
		while runner.next 
			return runner if len == num 
			len -= 1
			runner = runner.next
		end
		return nil
	end

	def findKthIter(num)
		return 0 if @head.nil?
		node1 = @head
		node2 = @head
		
		i = 0;
		while (i <= num)
			return nil if node1.next.nil?
			node1 = node1.next
			i += 1
		end

		while node1.next
			node1 = node1.next
			node2 = node2.next
		end	
		return node2
	end

end
