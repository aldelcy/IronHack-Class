require "sinatra"
require "sinatra/reloader"
require_relative "lib/blog.rb"
require_relative "lib/post.rb"

time = Time.now



post1 = Post.new("My First Day", "Blog content 1: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", time)
post2 = Post.new("My Second Day", "Blog content 2: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", time+10)
post3 = Post.new("My Third Day", "Blog content 3: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", time+20)
post3.add_sponsor("Coca Cola")
post4 = Post.new("My Fourth Day", "Blog content 4: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", time+30)
post5 = Post.new("My Fifth Day", "Blog content 5: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", time+40)
post6 = Post.new("My Sixth Day", "Blog content 6: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", time+50)
post6.add_sponsor("Barns and Nobles")

al_blog = Blog.new([post1, post2, post3, post4, post5, post6])

get '/' do
	@posts = al_blog.FullPost(0,6)
	@posts
	erb(:home)
end

