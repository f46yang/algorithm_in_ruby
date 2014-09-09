def quicksort(input)
	return input if input.length <= 1

	pivot_index = (input.length/2).floor
	pivot_value = input[pivot_index]
	input.delete_at(pivot_index)

	left_part = []
	right_part = []

	input.each do |x|
		if x < pivot_value
			left_part << x
		else
			right_part << x
		end
	end

	return quicksort(left_part) + [pivot_value] + quicksort(right_part)
end

input = [17,74,53,65,24,42,23,53,32,71,63,39,44,42,21,23]

p quicksort(input)