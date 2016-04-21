class User < ActiveRecord::Base
	has_many :products

	validates :name, presence: true
	validates :email, presence: true, format: {with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
end
