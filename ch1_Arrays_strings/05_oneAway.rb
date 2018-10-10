# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    05_oneAway.rb                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/10 15:15:59 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 16:42:32 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin
One Away: There are three types of edits that can be performed on strings: 
insert a character, remove a character, or replace a character. 

Given two strings, write a function to check if they are one edit 
(or zero edits) away.

EXAMPLE
pale, ple -> true 
pales, pale -> true 
pale, bale -> true 
pale, bae -> false
=end

args = ARGV


def 		oneChange(string1, string2)
	i = 0
	count = 0
	while string1[i] && string2[i]
		count += 1 if string1[i] != string2[i]
		return false if count > 1
		i += 1
	end
	return true
end

def			oneReplace(string1, string2)
	i = 0
	j = 0
	diff = 0
	while string1[i] && string2[j]
		if string1[i] != string2[j]
			if string1[i + 1] == string2[j]
				i += 1
				diff += 1
			elsif string1[i] == string2[j + 1]
				j += 1
				diff += 1
			else
				diff += 1
			end
		end
		i += 1
		j += 1
		return false if diff > 1
	end
	return true
end

def 		oneAway(str1, str2)
	len1 = str1.size
	len2 = str2.size
	res = false
	return res if (len1 - len2).abs > 1
	res = oneChange(str1, str2) if len1 == len2
	res = oneReplace(str1, str2) if len1 != len2

	return res
end


puts oneAway(args[0], args[1])

