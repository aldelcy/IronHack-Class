class TextInspectionsController < ApplicationController

	def new
		render 'new'
	end

	def create
    	@text = params[:text_inspection][:user_text]
    	@words = @text.split(" ")
    	@word_count = @words.length
    	@time_t_count = (@word_count/275.00)

    	freqs = Hash.new(0)
    	@frequency = @words.each { |word| freqs[word] += 1 }

    	@freqs_sort = freqs.sort_by {|x,y| y }
    	@freqs_reverse = @freqs_sort.reverse!

    	render "results"
  	end
end