# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    02_CheckPermutation.rb                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/09 23:08:32 by lhernand          #+#    #+#              #
#    Updated: 2018/10/09 23:47:01 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin
Check Permutation: Given two strings, write a method to decide if one 
is a permutation of the other.
=end

def checkPermutation(arg1, len1, arg2, len2)
	return false if len1 != len2
	i = 0;
	j = 0;
	my_hash = Hash.new(0)
	while arg1[i] && arg2[j]
		my_hash[arg1[i]] += 1
		my_hash[arg2[j]] -= 1
		i += 1
		j += 1
	end
	my_hash.each do |key, val|
		return false if val != 0
	end
	return true
end

arg1 = "abcdefgh"
arg2 = "abcedfhg"

puts checkPermutation(arg1, 8,  arg2, 8)
