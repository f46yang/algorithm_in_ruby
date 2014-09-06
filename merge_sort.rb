def sort(input)
	puts "sort #{input}"
	if input.length <= 1
		return input
	end
	left_part = sort(input[0, (input.length/2).floor])
	right_part = sort(input[(input.length/2).floor, input.length-1])
	return merge(left_part,right_part)
end

def merge(left_part, right_part)
	puts "merge left:#{left_part} right:#{right_part}"
	return left_part if right_part.length == 0
	return right_part if left_part.length == 0
	min_val = left_part[0] > right_part[0] ? right_part.shift : left_part.shift
	puts "min val is #{min_val}"
	return [min_val].concat(merge(left_part,right_part))
end

input = [6,8,1,4,5,3,7,2]

p sort(input)