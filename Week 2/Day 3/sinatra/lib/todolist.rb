class TodoList
	attr_reader :user, :tasks
	def initialize(user)
		todo_store = YAML::Store.new("./public/tasks.yml")
		@user = user
		@tasks = []
	end

	def add_task(task)
		@tasks << task
	end

	def delete_task(task_id)
		@task_id = task_id
		@tasks.delete_if{ |item| item.id == @task_id}
	end

	def find_task_by_id(task_id)
		@task_id = task_id
		@task_index = @tasks.find{|item| 
			item.id==@task_id
		}
		puts @task_index.content
	end

	def sort_tasks
		@sorted_tasks = @tasks.sort { |x,y| y.id <=> x.id }
		puts @sorted_tasks
	end

	def save
	  	@todo_store.transaction do 
	    	@todo_store[@user] = @tasks
		end
	end
end