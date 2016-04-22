class Concert < ActiveRecord::Base

	has_many :comments

	validates :name, presence: true, format: {with: /[a-zA-Z]/}
	validates :artist, presence: true, format: {with: /[a-zA-Z]/}
	validates :venue, presence: true, format: {with: /[a-zA-Z]/}
	validates :city, presence: true, format: {with: /[a-zA-Z]/}
	validates :date, presence: true
	validates :price, presence: true
end
