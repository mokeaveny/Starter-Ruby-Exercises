#write your code here
def echo(word)
	return word
end

def shout(words)
	words = words.upcase
	return words
end

def repeat(word, repeat_number = 2)
	repeated_word = ([word] * repeat_number).join(" ")
	return repeated_word
end

def start_of_word(word, length)
	new_word = ""
	length = length - 1
	
	for i in 0..length
		new_word = new_word + word[i]
	end
	return new_word
end

def first_word(words)
	split_words = words.split
	the_first_word = split_words[0]
	return the_first_word
end

def titleize(words)
	words_split = words.split
	number_of_words = words_split.length()
	number_of_words = number_of_words -1
	
	for i in 0..number_of_words
		word = words_split[i]
		word = word.to_s
		if (word == "and") || (word == "over") || (word == "the" && i != 0)
			next
		end
		word = word.capitalize()
		words_split[i] = word
	end
	capit_words = words_split.join(" ")
	return capit_words
end

titleize("war and peace")
