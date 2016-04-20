class Project < ActiveRecord::Base
	# self.table_name = 'projects'
	has_many :time_entries
end