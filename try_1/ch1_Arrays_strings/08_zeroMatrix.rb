# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    08_zeroMatrix.rb                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/10 19:26:59 by lhernand          #+#    #+#              #
#    Updated: 2018/10/10 19:55:47 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


arr = [
		[1,1,2,3],
		[3,1,1,3],
		[4,6,1,3],
		[1,1,2,0]
]

def 		findZeroes(arr)
	i = 0;
	j = 0;
	row = arr.length
	col = arr[0].length	
	narr_x = []
	narr_y = []
	while i < row
		j = 0
		while j < col
		   if arr[i][j] == 0
		   		narr_x << i
				narr_y << j
		   end	   
			j += 1
		end
		i += 1
	end
	
	k = 0
	l = 0
	x = 0
	y = 0
	while narr_x[k]  && narr_y[l]
		x = 0
		y = 0
		while y < col
			arr[narr_x[k]][y] = 0
			y += 1
		end
		while x < col
			arr[x][narr_y[l]] = 0
			x += 1
		end
		k += 1
		l += 1
	end
	return arr
end


p findZeroes(arr)
