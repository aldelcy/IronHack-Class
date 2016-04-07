class TodoList
	attr_reader :tasks
	def initialize 
		@tasks = []
	end

	def add_task(task)
		@tasks << task
		@tasks
	end

	def delete_task(task_id)
		@task_id = task_id
		@tasks.delete_if{ |item| item.id == @task_id}
	end

	def find_task_by_id(task_id)
		@task_id = task_id
		task_index = @tasks.find{|item| item.id==@task_id}
	end
end

# list = TodoList.new
# list.add_task("Walk the dog")
# list.add_task("Buy the Milk")

# puts list.tasks

# list