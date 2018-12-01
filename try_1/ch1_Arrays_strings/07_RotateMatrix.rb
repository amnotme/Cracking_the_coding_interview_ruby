# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    07_RotateMatrix.rb                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/10 18:04:19 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 19:23:26 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin
Rotate Matrix: 
Given an image represented by an NxN matrix, where each pixel in 
the image is 4 bytes, write a method to rotate the image by 90 degrees. 

Can you do this in place?
=end

arr = [
		[0,1,2,3], 
		[4,5,6,7], 
		[8,9,10,11],
	   	[12,13,14,15]
]





def 		rotateMatrix(arr)
	return false if arr.length == 0 || arr.length != arr[0].length
	n = arr.length
	layer = 0
	while layer < n / 2
		first = layer
		last = n - 1 - layer
		i = first
		while i < last
			offset = i - first
			top = arr[first][i]
			arr[first][i] = arr[last - offset][first]
			arr[last - offset][first] = arr[last][last - offset]
			print(penis)
			arr[last][last - offset] = arr[i][last]
			arr[i][last] = top
			i += 1
		end
		layer += 1
	end
	arr
end


print rotateMatrix(arr)
