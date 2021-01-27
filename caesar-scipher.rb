def caesar_scipher(string, shift)
	arr = string.codepoints
	result = ''
	arr.each do |item|
		if item >= 65 && item <= 90
			new_codepoint = item += shift
			if new_codepoint < 65
				until new_codepoint >= 65 do
					item = 91
					item += new_codepoint - 65
					new_codepoint = item
				end
			elsif new_codepoint > 90
				until new_codepoint <= 90 do
					item = 64
					item += new_codepoint - 90
					new_codepoint = item	
				end	
			end
		elsif item >= 97 && item <= 122
			new_codepoint = item += shift
			if new_codepoint < 97
				until new_codepoint >= 97 do
					item = 123
					item += new_codepoint - 97
					new_codepoint = item  	
				end
			elsif new_codepoint > 122
				until new_codepoint <= 122 do
					item = 96
					item += new_codepoint - 122
					new_codepoint = item
				end
			end 
		else
			new_codepoint = item 
		end
		result << new_codepoint
	end
	puts result
end 

caesar_scipher('Vszzc, Kcfzr!!', -225434)