class Task
	attr_reader :name, :content, :id, :created_at
	@@current_id = 1
	def initialize(name, content, created) 
		@name = name
		@content = content
		@id = @@current_id
		@complete = false

		@@current_id += 1
		@created = created
		@updated = nil
	end

	def completed?
		@complete
	end	
	
	def complete!
		@complete = true
	end	

	def make_incomplete!
		@complete = false
	end	

	def content!(new_content)
		@content = new_content
		@content
	end	

	def updated_at
		@updated = Time.now
	end	

end

# task = Task.new("Buy the milk")
# puts task.completed?

# task.complete!
# puts task.completed?
