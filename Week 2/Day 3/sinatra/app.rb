require_relative "lib/tasks.rb"
require_relative "lib/todolist.rb"
require "sinatra"
require "sinatra/reloader"
require "Yaml/store"

enable(:sessions)

my_list = nil

get "/?" do
	erb(:home)
end

post "/?" do
	@user_name = params[:user_name]
	@user_submit = params[:create]
	session[:user] = @user_name

	my_list = TodoList.new(@user_name)

	erb(:home)
end

post "/add_task" do

	@task_name = params[:task_name]
	@task_desc = params[:task_desc]
	@submit = params[:submit_task]

	time = Time.now
	# time_str = time.strftime("")

	@my_task = Task.new(@task_name, @task_desc, time)

	my_list.add_task(@my_task)

	# @user_list.add_task(@my_task)
	# @user_list.save

	erb(:add_task)
end