#write your code here
def translate(words)
	words = words.split
	number_of_words = words.length()
	number_of_words = number_of_words - 1
	converted_words = ""
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	
	for i in 0..number_of_words
		current_word = words[i]
		current_length = current_word.length
		current_length = current_length - 1
		converted_word = ""
		substring = ""
		start = false
		
		for j in 0..current_length
			if(vowels.include?(current_word[0])) && (start == false)
				start = true
				converted_word = converted_word + current_word[j]
				
			elsif(consonants.include?(current_word[j])) && (start == false)
				if(vowels.include?(current_word[j+1]))
					start = true
					substring = substring + current_word[j]
				else
					substring = substring + current_word[j]
				end
				
			else
				converted_word = converted_word + current_word[j]
			end
		end
		converted_word = converted_word + substring + "ay"
		if converted_words == ""
		converted_words = converted_words + converted_word
		else
			converted_words = converted_words + " " + converted_word
		end
	end
	return converted_words
end

translate("banana")