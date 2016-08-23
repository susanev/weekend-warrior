class Complement
	def self.of_dna(strand)
		return convert(strand, {G:"C", C:"G", T:"A", A:"U"})
	end

	def self.of_rna(strand)
		return convert(strand, {C:"G", G:"C", A:"T", U:"A"})
	end

	def self.convert(strand, pairs)
		output = ""
		for i in 0..strand.length-1
			letter = strand[i]
			if(pairs[letter.to_sym] == nil)
				raise ArgumentError.new
			else
				output+=pairs[letter.to_sym]
			end
		end
		return output
	end
end
