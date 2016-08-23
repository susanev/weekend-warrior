class Hamming
	def self.compute(strand1, strand2)
		if(strand1.length != strand2.length)
			raise ArgumentError.new
		end

		differences = 0
		
		for i in 0..strand1.length
			if strand1[i] != strand2[i]
				differences+=1
			end
		end
		return differences
	end
end
