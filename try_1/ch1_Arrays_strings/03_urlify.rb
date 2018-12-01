# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    03_urlify.rb                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/09 23:47:21 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 00:47:15 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin
URLify: Write a method to replace all spaces in a string with '%20'. 
You may assume that the string has sufficient space at the end to hold 
the additional characters, and that you are given the "true" length of the 
string. (Note: if implementing in Java, please use a character array so 
that you can perform this operation in place.)

EXAMPLE

Input: "Mr John Smith ", 13 Output: "Mr%20John%20Smith"
=end

str = "Mr John Smith    "
len = 13
str1 = "leopoldo is fucking awesome      "
len2 = 27
def countspaces(str, len)
	i = 0
	spaces = 0
	while (i < len)
		spaces += 1 if str[i] == ' '
		i += 1
	end
	spaces
end

def urlify(str, len)
	spaces = countspaces(str, len)
	temp_str = "02%"
	real_length = len + (spaces * 2) - 1	
	while (len > 0)
		if str[len - 1] == ' '
			i = 0
			while (temp_str[i])
				str[real_length] = temp_str[i]
				i += 1
				real_length -= 1
			end
		else
			str[real_length] = str[len - 1]
			real_length -= 1
		end
		len -= 1
	end
	str

end

puts urlify(str, 13)
puts urlify(str1, len2)


