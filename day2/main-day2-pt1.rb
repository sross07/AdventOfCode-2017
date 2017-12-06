total = 0

File.read('input.txt').lines.each do |line|
	holder = line.split
	max = 0
	min = 0
	
	holder.each do |num|
		if max == 0 || max < num.to_i
			max = num.to_i
		end
		
		if min == 0 || min > num.to_i
			min = num.to_i
		end		
	end	

	total = total + (max - min)		
end

puts total
