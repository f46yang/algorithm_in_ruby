def insertion_sort(input)

#Iterate from left to right
=begin
	for i in 0...input.length do
		p input
		for j in 0..i do
			if input[j] > input[i]
				input.insert(j,input[i])
				input.delete_at(i+1)
			end
		end
	end 
=end

#Iterate from right to left

	for i in 0...--input.length do
		p input
		for j in i...input.length do
			if input[i] > input[j]
				input.insert(i, input[j])
				input.delete_at(j+1)
			end
		end
	end
	input
end


input = [6,8,1,4,5,3,7,2]

p insertion_sort(input)