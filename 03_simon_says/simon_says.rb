#write your code here

def echo str
	str
end

def shout str
	str.upcase
end

def repeat str, repetitions = 2
	i = repetitions
	string = ""
	while i > 0
		string += str
		if i != 1
			string += " "
		end
		i -= 1
	end
	string
end

def start_of_word str, len
	str[0, 0 + len]
end

def first_word str
	str.split(" ")[0]
end

def titleize str
	str = str.split(" ")
	temp = []
	str.each do |i|
		if i != "and" and i != "the" and i != "of" and i != "over"
			temp.push(i.capitalize)
		else 
			temp.push(i.downcase)
		end
	end
	if temp.length > 1
		temp[0] = temp[0].capitalize
		temp.join(" ");
	else temp.pop
	end
end