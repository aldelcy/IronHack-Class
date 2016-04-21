class TimeEntry < ActiveRecord::Base
	validates :hours, presence: true, format: {with: /\d/}
	validates :minutes, presence: true, format: {with: /\d/}
end