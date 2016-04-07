class RunProg
	attr_writer :phrase
	def initialize(phrase)
		@phrase = phrase
	end

	def word_count
		@phrase.split.size
	end
end


# check = RunProg.new("as asdasd asdasd asd as dasd asdas das")
# puts check.word_count