# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    01_isUnique.rb                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/09 21:25:56 by lhernand          #+#    #+#              #
#    Updated: 2018/10/09 23:08:06 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


=begin
Is Unique: Implement an algorithm to determine if a string has all 
unique characters. What if you cannot use additional data structures?
=end
=begin
def quicksort(args, first, last)
	if (first < last)
		pivot = partition(args, first, last)
		quicksort(args, pivot + 1, last)
		quicksort(args, first, pivot - 1)
	end
	return args
end

def partition(args, first, last)
	pivot = args[last]
	p_index = first
	i = first
	while i < last
		if args[i]  <= pivot
			args[i], args[p_index] = args[p_index], args[i]
			p_index += 1
		end
		i += 1
	end
	args[i], args[p_index] = args[p_index], args[i]
	return p_index
end
=end

def	quicksort(args, first, last)
	if (first < last)
		pivot = partition(args, first, last)
		quicksort(args, pivot + 1, last)
		quicksort(args, first, pivot - 1)
	end
	return args
end

def partition(args, first, last)
	pivot = args[last]
	p_index = first
	i = first
	while i < last
		if args[i] <= pivot
			args[i], args[p_index] = args[p_index], args[i]
			p_index += 1
		end
		i += 1
	end
	
	args[i], args[p_index] = args[p_index], args[i]
	return p_index
end

def is_unique?(args)
	i = 1;
	len = args.size
	args = quicksort(args, 0, len - 1)
	p args
	while args[i] && i < 128
		if args[i - 1] == args[i]
			return false
		end
		i += 1
	end
	return true
end



args = "what in  the fucking world is this puthcar.  I just dont understand what this could be like serioulsy it just doesn't make any freaking sense for me to keep doing this then"
args1 = "cda"
args2 = "12034567890"

p is_unique?(args)
p is_unique?(args1)
p is_unique?(args2)

