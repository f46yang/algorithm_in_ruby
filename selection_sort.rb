def selection_sort(input)
	#p input
	for i in 0...--input.length do
		min_index = i
		for j in i+1...input.length do
			if input[j] < input[min_index]
				min_index = j
			end
		end

		if input[i] != input[min_index]
			temp = input[i]
			input[i] = input[min_index]
			input[min_index] = temp
		end

 end
 input
end

input = [6,8,1,4,5,3,7,2]

p selection_sort(input)