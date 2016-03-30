#BLOG_PAGE

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

current_page = 1
post_per_page = 2
start = (current_page - 1)*post_per_page
limit = post_per_page
total_posts = al_blog.post.size
num_pages = (total_posts/post_per_page).ceil

navigate = ""

while navigate != nil
	al_blog.FullPost(start,limit)

	require 'colorize'

	for page in 1..num_pages
		if page != current_page
			page_num = page.to_s
		else
			page_num = page.to_s.red
		end
		print page_num+" "
	end
	puts "\n\n"
	
	puts "Type next, prev or exit:"
	navigate = gets.chomp

	puts "\n\n"

	if navigate.downcase == "next" && current_page <= num_pages-1
		current_page += 1
		start += limit
		limit = post_per_page
	elsif (navigate.downcase == "prev" || navigate.downcase == "previous") && current_page >= num_pages-1
		current_page -= 1
		start -= limit
		limit = post_per_page
	elsif navigate.downcase == "exit"
		break
	else
		if navigate.downcase == "next"
			what_do = "REACHED THE END\nNO MORE POSTS\n"
		elsif (navigate.downcase == "prev" || navigate.downcase == "previous")
			what_do = "START OF POSTS\nNO PREVIOUS POSTS\n"
		else
			what_do = "WRONG ENTRY\nTRY AGAIN\n"
		end
			
		puts what_do.red
		current_page = current_page
		start = start
		limit = post_per_page
	end

end