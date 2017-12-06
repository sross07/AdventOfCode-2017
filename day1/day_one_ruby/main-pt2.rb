puts "Get AoC day 1 input, pt2: "
input = gets.chomp.chars.map(&:to_i)

total = 0
step_size = input.size / 2

total = input.each_with_index.reduce(0) do |sum, (element, index)|
	pair_index = index - step_size
	
	if element == input[pair_index]
		sum + element
	else
		sum
	end
end

puts "total is #{total.to_s}"
