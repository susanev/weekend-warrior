class Xmas
	def self.verse(num)
		output = ""
		days = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
		all_gifts = setup_gifts(num)
		
		output+= "On the #{days[num]} day of Christmas my true love gave to me\n"

		for j in (num).downto(0)
			gift = all_gifts[j]

			if(j == 4)
				gift = gift.upcase
			end

			output+=gift+"\n"
		end

		if(num != 11)
			output+= "\n"
		else
			output = output.chomp("\n")
		end

		return output
	end

	def self.sing
		output = ""

		for i in 0..11		
			output+= verse(i)
		end

		return output
	end

	def self.gifts(num)
		all_gifts = setup_gifts(num)
		gifts = []

		for i in (num).downto(0)
			gift = all_gifts[i]

			if(i == 4)
				gift = gift.upcase
			end

			gifts.push(gift)
		end

		return gifts
	end

	def self.setup_gifts(num)
		first_gift = "and "
		
		if num == 0
			first_gift = ""
		end

		all_gifts = [first_gift + "a partridge in a pear tree", "two turtle doves", "three french hens", "four calling birds", "five golden rings", "six geese-a-laying", "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing", "ten lords-a-leaping", "eleven pipers piping","twelve drummers drumming"]
		return all_gifts
	end
end
