#BLOG_PAGE

require_relative "lib/blog.rb"
require_relative "lib/post.rb"


time = Time.now



post1 = Post.new("My First Day", "I was very nervous during my first day of the group meet, I knew no one and no one knew me, but I managed to make some friends. Well... one friend at least, and to be completly honest, she approached me. \nShe had a green dress and black hair. \nShe stared at the stormy clouds from the window next to me. \nShe didnt say much, yet I knew she would play a role during my stay here.", time)
post2 = Post.new("My Second Day", "I knew what I was getting into, I mean I signed up for it, no one forced me to be part of this group, why am I doubting myself?\nWhy and I still nervous? \nOur leader Nizar had been sitting in front of us for 10 mns now. He has not uttered a word since his arrival. The silence gradually started to get a bit too noisy for my comfort.\nHis beard resembled that of a hispter barista whose wife had to comprise on an agreable lenght following a lenghty argument on why she doesn't like long facial hair.\nHe took exactly 7 mns to set up his desk and stares at each of us for exactly 1 mn without making a sound.\n... I'm the 5th one here and although he had not made any remarks or criticism, I'm starting to feel anxious.", time+10)
post3 = Post.new("My Third Day", "Today is when it really started. \nThe first two days were oddly quiet. I'm starting to think I missed a memo on daily word quota. \nWe were given the red bag. No one knows what's in it. We were never told the contents prior to recieving them. \nWe all knew we would get them and we'd tried to guess what they would contain during our lunch conversation, but they change every year. The coordinating team goes through GREAT lenghts to customize it's contents.\nWe were not to open them until the seventh day of our stay.", time+20)
post3.add_sponsor("Coca Cola")
post4 = Post.new("My Fourth Day", "It was a very short day.\nToday we met Alia.\nAfter greeting us with a smile and telling what she ate this morning, her name, the color of her cat, and what a pigeon sounds like... in that oddly specific order, she started reading the 3rd chapter from Twilight. \nI mean TWILIGHT, from all the... alright, let me calm down... maybe this is a test. \nEach curl of her hair seemed to dance with the other in black and brown chaotic order.\nAfter the lecture, she placed the book at the edge of the desk, got up, bowed and walked out of the room.", time+30)
post5 = Post.new("My Fifth Day", "Today was odd... yes, more than the previous days. Someone came to our meeting with a green bag.\nWhere had she gotten it from. I thought we all had red. She still had the green dress she wore on the first day and sat opposite to me as if nothing had changed.\nA lot had changed. \nHer bag was green \nWhat could it mean? \nIt may seem silly to question the color of a bag, but had you spent the last four days with us, a teal cup out of a blue lineup would have sent you in a world of reflexion. \nJosh, our co-commander approached her right before the bell rung for lunch and whispered something in her ear. He had been seating in the back of the room since day 1 and not a hair in his body seemed to have moved since until now.", time+40)
post6 = Post.new("My Sixth Day", "Today was just a normal day. A breath of fresh air after 5 days of what-the-f**kery. \nAriel, our commander, who until today was just a name on a door, was seen crossing the hall today. He was tossing a small sand bag in the air and talking on the phone. He was fully suited but was wearing flip-flops, no one seemed to quesion it. Oddly, I didnt either.\nWe're missing someone today... no green bag, no green dress.\nTomorrow, we finally open our bags, we should be excited, yet it feels oddly unsettling to have an empty chair in the room.\nDuring lunch today, we were served the usual; Whole weat toast with butter, ceasar salad, rice and water. \nHowever, today was a little different. \nI had an an extra side dish. \nIt was a note. \nIn it... a message from the girl in the green dress.", time+50)
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