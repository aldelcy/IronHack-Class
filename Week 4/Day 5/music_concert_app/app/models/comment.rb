class Comment < ActiveRecord::Base

	belongs_to :concert

	validates :user_name, presence: true
	validates :comment, presence: true
	validates :concert_id, presence: true
end
