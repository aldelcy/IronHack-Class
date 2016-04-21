class Bid < ActiveRecord::Base
	belongs_to :product

	validates :user_bid, presence: true,
						 format: {with: /\[]\} 
end
