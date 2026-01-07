def sub_strings(word, dictionary)

	matches = Hash.new(0)

	dictionary.each do |substring|
		if word.downcase.include?(substring.downcase)
			count = word.downcase.scan(substring.downcase).count
			matches[substring] += count

		end


	end

return matches
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


puts sub_strings("Howdy partner, sit down! How's it going?", dict)

