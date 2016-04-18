Rails.application.routes.draw do
  root "site#home", as: :home
  get '/text_inspections/new', to: "text_inspections#new", as: :textinspections
  post '/text_inspections', to: "text_inspections#create"
  get '/asciis/new', to: "asciis#new", as: :asciis
  post '/asciis', to: "asciis#create"
end