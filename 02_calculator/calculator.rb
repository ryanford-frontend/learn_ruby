#write your code here
def add num_one, num_two
	num_one + num_two
end

def subtract num_one, num_two
	num_one - num_two
end

def sum arr
	this_sum = 0
	arr.each do |num|
		this_sum += num		
	end
	this_sum
end

def multiply arr
	this_total = arr.pop
	if arr.length > 0
		arr.each do |num|
			this_total *= num
		end
	end
	this_total
end

def power num_one, num_two
	num_one ** num_two
end

def factorial num
	i = num
	while i > 0 do
		i -= 1
		if i != 0
			num *= i
		end
	end
	num
end