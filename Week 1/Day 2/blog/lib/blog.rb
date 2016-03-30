#BLOG

require_relative "post.rb"

class Blog

	attr_accessor :post

	def initialize(posts)
		@post = posts
	end

	def FullPost(start, stop)
			require 'colorize'
			@post.sort{ |x,y| x.date_time <=> y.date_time}.slice(start,stop).each do |entry|
				puts (entry.title).yellow+"\n Posted on: "+entry.date_time.to_s
				puts ("*******")
				puts (entry.content).white
				
				unless entry.sponsor.empty?
					puts "\nSponsored by: #{(entry.sponsor.join(', ')).white}"
				else
					puts ""
				end 
				puts ("--------------\n\n")
			end

	end
end