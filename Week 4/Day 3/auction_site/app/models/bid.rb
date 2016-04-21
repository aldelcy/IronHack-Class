class Bid < ActiveRecord::Base
	belongs_to :product
	belongs_to :user

	validates :user_bid, presence: true,
						 format: {with: /\d/} 
end
