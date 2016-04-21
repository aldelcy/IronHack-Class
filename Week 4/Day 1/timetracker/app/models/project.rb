class Project < ActiveRecord::Base
	# self.table_name = 'projects'
	has_many :time_entries

	def self.clean_old
		time = Time.now - 1.hour
		old_projects = Project.where("created_at > ?", time)
		old_projects.destroy_all
	end
end