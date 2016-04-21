class ProductController < ApplicationController
	def new
		@new_product = Product.new
	end

	def create
		@new_product = Product.create(params[:title],params[:description],params[:deadline])
	end

	def index
		
	end
	
	def show
		
	end

	def destroy

	end
end
