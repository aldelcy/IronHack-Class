class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :asc)
						   .limit(10)
		render "index"
	end
	def show
		@my_projects = Project.find(params[:id])
		render "show"	
	end
end