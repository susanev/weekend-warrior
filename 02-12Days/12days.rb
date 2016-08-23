first_gift = "a"
days = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
gifts = [first_gift+ " partridge in a pear tree", "two turtle doves", "three french hens", "four calling birds", "five golden rings", "six geese-a-laying", "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing", "ten lords-a-leaping", "eleven pipers piping","twelve drummers drumming"]

for i in 0..days.length
	if i == 1
		first_gift = "and"
	end
	
	puts "On the #{days[i]} of Christmas my true love gave to me"

	for j in (i).downto(0)
		puts gifts[j]
	end
	puts "\n"
end
