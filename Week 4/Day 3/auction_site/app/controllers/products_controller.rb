class ProductsController < ApplicationController
	def new
		@user = User.find(params[:user_id])
		@new_product = Product.new
	end

	def create
		Product.create(product_params)
		redirect_to "/products"
	end

	def index
		@products = Product.all

	end
	
	def show
		@prod = Product.find(params[:id])
		@new_bid = Bid.new
	end

	def destroy

	end




	private

	def product_params
		params.require(:product).permit(:title, :description, :deadline, :user_id)
	end
end