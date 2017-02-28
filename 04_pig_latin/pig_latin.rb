#write your code here

def translate str
	consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	consonant_count = 0
	i = 0
	j = 0
	new_str = []
	str = str.split(" ")

	str.each do	|substr|
		consonant_count = 0
		i = 0
		4.times do
			j = i
			consonants.each do |consonant|
				if i == j
					if substr[i] == consonant
						if substr[i] == "q" and substr[i+1] == "u"
							i +=1
							consonant_count += 2
						else
							i += 1
							consonant_count += 1
						end
					end
				end
			end
		end

		new_str.push(substr.slice(consonant_count, substr.length) + substr.slice(0, consonant_count) + "ay")

	end

	new_str.join(" ")


end