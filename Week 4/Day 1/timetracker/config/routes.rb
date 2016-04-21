Rails.application.routes.draw do
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'
  get '/say_name/:name', to: 'site#say_name'
  get '/calculator' => 'site#calculator'
  post '/calculate' => 'site#calculate'

  get '/projects/new', to: 'projects#new'
  post '/projects', to: 'projects#create'
  get '/projects', to: 'projects#index'
  get '/projects/:id', to: 'projects#show'

  get '/projects/:project_id/time_entries', to: 'time_entries#index'
  get '/projects/:project_id/time_entries/new', to: 'time_entries#new'
  post '/projects/:project_id/time_entries', to: 'time_entries#create', as: :project_time_entries
end