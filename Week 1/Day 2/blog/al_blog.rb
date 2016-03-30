#BLOG_PAGE

require_relative "lib/blog.rb"
require_relative "lib/post.rb"


time = Time.now



post1 = Post.new("My First Day", "I was very scared of my first day of school, I knew no one and no one knew me, but I managed to make some friends", time)
post2 = Post.new("My Second Day", "I knew what I was getting into, I meand I signed up for it, no one forced me to be part of this group, why am I doubting myself? ", time+10)
post2.add_sponsor("Coca Cola")
post3 = Post.new("My Third Day", "Today is when it really started, we were given the red bag. No one knows what's in it. We were never told the contents, but we knew we would get them, it was expected.", time+20)
post4 = Post.new("My Fourth Day", "I was very scared of my first day of school, I knew no one and no one knew me, but I managed to make some friends", time+30)
post4.add_sponsor("Barns and Nobles")
post5 = Post.new("My Fifth Day", "I knew what I was getting into, I meand I signed up for it, no one forced me to be part of this group, why am I doubting myself? ", time+40)
post6 = Post.new("My Sixth Day", "Today is when it really started, we were given the red bag. No one knows what's in it. We were never told the contents, but we knew we would get them, it was expected.", time+50)

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
	
	puts "Type next or prev:"
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