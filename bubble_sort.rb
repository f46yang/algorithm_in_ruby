def bubble_sort(input)
	p input
	for i in 0...input.length do
		for j in 0..i do
			if input[j] >= input[i] 
				temp = input[j]
				input[j] = input[i]
				input[i] = temp
			end
		end
	end
	input
end

input = [6,8,1,4,5,3,7,2]

p bubble_sort(input)