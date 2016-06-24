def stock_picker(array)
	pair = [0,0]
	array.each do |day|
		array.each do |day2|
			if array.index(day2) > array.index(day)
				if day2 - day > array[pair[1]] - array[pair[0]]
					pair.pop
					pair.pop
					pair.push(array.index(day))
					pair.push(array.index(day2))
				end
			end
		end
	end
	puts
	puts pair.join(", ")
end
stock_picker([17,7,6,9,15,8,6,1,10])
