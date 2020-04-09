class Book
	attr_accessor :title
	
	def title
		words = @title.split(" ")
		number_of_words = words.length
		number_of_words = number_of_words - 1

		for i in 0..number_of_words
			word = words[i]
			if word != "and" && word != "the" && word != "over" && word != "in" && word != "of" && word != "a" && word != "an"
				word = word.capitalize
			end
			words[i] = word
		end
		words[0] = words[0].capitalize
		words.join(" ")
	end
end

@book = Book.new
@book.title = "to kill a mockingbird"
puts @book.title