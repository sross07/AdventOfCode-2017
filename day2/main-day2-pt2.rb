total = 0

File.read('input.txt').lines.each do |line|
	holder = line.split
	result = 0 	
	
	holder.each do |num|
		
		holder.each do |val|
			if num.to_i % val.to_i == 0
				result = (num.to_i/val.to_i)
			elsif val.to_i % num.to_i == 0 
				result = (val.to_i/num.to_i)
			end		
		end			
		total = result + total 
	end	
end

puts total
