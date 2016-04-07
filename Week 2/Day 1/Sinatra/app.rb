require_relative "lib/tasks.rb"
require_relative "lib/todolist.rb"

time = Time.now

task1 = Task.new("Buy the dog", Time.new(2016, 4, 4, 5, 02, 00))
task2 = Task.new("Walk the Milk", Time.new(2016, 4, 4, 5, 02, 10))
task3 = Task.new("Walk the Milk", Time.new(2016, 4, 4, 5, 02, 10))

todo_list = TodoList.new

todo_list.add_task(task1)
todo_list.add_task(task2)
todo_list.add_task(task3)

todo_list.tasks.each do |item|
	item.id
end

todo_list.delete_task(2)

todo_list.tasks.each do |item|
	puts item.id
end
