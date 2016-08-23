class Robot
	attr_accessor :name

	def initialize
		reset
	end

	def reset
		@name = rand(65..90).chr + rand(65..90).chr

		for i in 0..2
			@name+=rand(0..9).to_s
		end
	end
end