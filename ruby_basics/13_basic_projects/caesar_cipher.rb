def caesar_cipher(string, number)

#turns string into array of letters
array =	string.chars
array_encrypted = Array.new

	#for each letter in array do
	array.map() do |letter| 
		
		#
		if letter.match? /\A[a-zA-Z]*\z/


			if letter.match? /\A[a-z]*\z/
			
				letter = letter.ord + number
				if letter < 97
					letter = letter + 26
				elsif letter > 122
					letter = letter - 26
				end

				letter = letter.chr
				array_encrypted.push(letter)


			elsif letter.match? /\A[A-Z]*\z/
				
				letter = letter.ord + number
				if letter < 65
					letter = letter + 26
				elsif letter > 90
					letter = letter -26
				end

				letter = letter.chr
				array_encrypted.push(letter)
			
			end
		else
			array_encrypted.push(letter)

		end

	end
	string_encrypted = array_encrypted.join
	string_encrypted

end
puts caesar_cipher("Hello World!", 10)