#POSTS

class Post
	attr_accessor :title, :content, :date_time, :sponsor

	def initialize(title, content, date_time)
		@title = title
		@content = content
		@date_time = date_time
		@sponsor = []
	end

	def add_sponsor(sponsor)
		@sponsor.push(sponsor)
	end

end