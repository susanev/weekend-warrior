class Roman
	def self.reverter(roman_numeral)
		num = 0

		(0..roman_numeral.length-2).step(2) do |i|
			first = convert(i, roman_numeral)
			second = convert(i+1, roman_numeral)

			if first < second
				num+=second-first
			else
				num+=first+second
			end
		end

		len = roman_numeral.length
		if len%2 != 0
			num+=convert(len-1, roman_numeral)
		end

		return num
	end

	def self.convert(index, roman_numeral)
		numeral_key = {I:1, V:5, X:10, L:50, C:100, D:500, M:1000}

		return numeral_key[roman_numeral[index].to_sym]
	end
end

# I placed before V or X indicates one less, so four is IV (one less than five) and nine is IX (one less than ten)
# X placed before L or C indicates ten less, so forty is XL (ten less than fifty) and ninety is XC (ten less than a hundred)
# C placed before D or M indicates a hundred less, so four hundred is CD (a hundred less than five hundred) and nine hundred is CM (a hundred less than a thousand)[5]