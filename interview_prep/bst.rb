# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    bst.rb                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/08 22:41:07 by lhernand          #+#    #+#              #
#    Updated: 2018/10/09 12:51:17 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

class Node
	attr_accessor :left, :right
	attr_reader	  :val

	def initialize(val)
		@val = val
		@left = nil
		@right = nil
	end

	def insert(val)
		if val <= @val
			(@left.nil? ? @left = Node.new(val) : @left.insert(val))
		elsif val > @val
			(@right.nil? ? @right = Node.new(val) : @right.insert(val))
		end
	end

	def to_s
		return(val.to_s)
	end
end



class Tree
	def initialize
		@root = nil
	end
	def insert(val)
		@root = Node.new(val) if !@root
		@root.insert(val)
	end

	def in_order(node=@root, &prc)
		return if node.nil?
		in_order(node.left, &prc)
		yield node
		in_order(node.right, &prc)
	end

	def pre_order(node=@root, &prc)
		return if node.nil?
		yield node
		pre_order(node.left, &prc)
		pre_order(node.right, &prc)
	end

	def post_order(node=@root, &prc)
		return if node.nil?
		post_order(node.left, &prc)
		post_order(node.right, &prc)
		yield node
	end

	def search(node=@root, value)
		return nil if node.nil?
		if	value < node.val
			search(node.left, value)
		elsif value > node.val
			search(node.right, value)
		else
			return node
		end
	end

	def	check_height(node=@root)
		return 0 if node.nil?
		leftC = check_height(node.left)
		return -1 if leftC == -1 

		rightC = check_height(node.right)
		return -1 if rightC == -1

		diff = leftC - rightC
		if diff.abs > 1
			-1
		else
			[leftC, rightC].max + 1
		end
	end

	def is_balanced?(node=@root)
		check_height(node) == -1 ? false : true
	end

end

t = Tree.new

(0..100).each do |num|
	t.insert(num)
end

tree = Tree.new
tree.insert(50)
tree.insert(25)
tree.insert(75)
tree.insert(12)
tree.insert(37)
tree.insert(87)
tree.insert(63)
puts tree.inspect
puts "\nin order\n"
tree.in_order do |node|
	print "#{node.val} "
end
puts "\npre_order\n"
tree.pre_order do |node|
	print "#{node.val} "
end
puts "\npost_order\n"
tree.post_order do |node|
	print "#{node.val} "
end
puts
node = tree.search(37)
puts
p tree.check_height(node)
p tree.is_balanced?
p t.check_height
p t.is_balanced?
