class Book
	attr_reader :title
	def title=(t)
		words = ["the","a","an","and","in","of"]
		@title = t
		@title = @title.split(" ")
		@title.each_with_index do |word,i|
			unless words.include?(word) and i != 0
				word.capitalize!
			end
		end
		@title = @title.join(" ")
	end	
end
