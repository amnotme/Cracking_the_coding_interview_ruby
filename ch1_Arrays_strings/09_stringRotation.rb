# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    09_stringRotation.rb                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/10 20:13:30 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 20:18:04 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin
Assume you have a method isSubstring which checks if one word is a substring of 
another. 
Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 
using only one call to isSubstring 

(e.g., "waterbottle" is a rotation of" erbottlewat").
=end

args = ARGV




def 		isRotation(s1, s2)
	return false if s1.length != s2.length
	strstr = s1 + s1
	strstr.include?(s2) ? true : false
end


puts isRotation(args[0], args[1])

