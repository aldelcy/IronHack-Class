class AsciisController < ApplicationController
	def new
		render "new"
	end

	def create
		font = 'slant'
    	my_ascii = Artii::Base.new :font => font
		@word = my_ascii.asciify(params[:text_inspection][:user_text])
    	render "create"
  	end
end
