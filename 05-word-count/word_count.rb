def words(phrase)
	values = phrase.split(" ")
	output = {}

	for i in values do 
		if output.key?(i)
			output[i] = output[i]+=1
		else
			output[i] = 1
		end
	end

	return output
end