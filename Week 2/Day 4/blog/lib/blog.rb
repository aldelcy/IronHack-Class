#BLOG

require_relative "post.rb"

class Blog

	attr_accessor :post, :post_sort, :post_limit

	def initialize(posts)
		@post = posts
	end

	def FullPost(start, stop)
		@post_sort = @post.sort{ |x,y| x.date_time <=> y.date_time}
		@post_limit = @post_sort.slice(start,stop)
		@post_limit
	end
end