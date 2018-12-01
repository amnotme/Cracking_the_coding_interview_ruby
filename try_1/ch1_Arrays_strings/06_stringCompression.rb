# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    06_stringCompression.rb                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/10 16:40:55 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 18:03:26 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin
String Compression: Implement a method to perform basic string compression 
using the counts of repeated characters. For example, the string aabcccccaaa 
would become a2blc5a3. If the "compressed" string would not become smaller 
than the original string, your method should return the original string. 

You can assume the string has only uppercase and lowercase letters (a - z).
=end


def 		stringCompression(args)
	i = 1;
	arr = "";
	count = 1;
	len = args.length
	while i < len + 1
		if args[i - 1] == args[i]
			count += 1
		else
			arr <<  args[i - 1] <<  count.to_s
			count = 1
		end
		i += 1
	end
	arr.size > len ? args : arr
end


puts stringCompression(ARGV[0])
