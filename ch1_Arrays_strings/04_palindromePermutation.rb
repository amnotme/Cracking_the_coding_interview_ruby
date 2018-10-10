# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    04_palindromePermutation.rb                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/10 00:49:49 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 01:42:30 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin

Palindrome Permutation: Given a string, write a function to check if it is 
a permutation of a palindrome. A palindrome is a word or phrase that is the 
same forwards and backwards. A permutation is a rearrangement of letters. 
The palindrome does not need to be limited to just dictionary words.

EXAMPLE
Input: Tact Coa
Output: True (permutations: "taco cat'; "atc o eta·; etc)

=end

def		palindromePermutation(arr)
	len = arr.size
	char_arr = Array.new(128, 0)
	i = 0;	
	while (i < len)
		char_arr[arr[i].downcase.ord] += 1 unless arr[i] == ' '
		i += 1
	end
	i = 0
	count = 0
	while (char_arr[i])
		count += 1 if char_arr[i] % 2 == 1
		return false if count > 2
		i += 1
	end
	return true 
end

arr = "Tact Coa"
arr2 = "Race car"
arr3 = "sugus"
arr4 = "L"
arr5 = "this isn't a fucking palindrome"
p palindromePermutation(arr)
p palindromePermutation(arr2)
p palindromePermutation(arr3)
p palindromePermutation(arr4)
p palindromePermutation(arr5)

