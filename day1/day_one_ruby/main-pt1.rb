puts "Get AoC day 1 input: "
input = gets.chomp

total = 0

input.split('').each_with_index do|i, index|
	if (i == input[index+1])
		total = total + i.to_i
	end

	if (index == (input.size-1))
		if (i==input[0])
			total = total + i.to_i
		end
	end
end

puts "total is #{total.to_s}"