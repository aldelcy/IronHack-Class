Rails.application.routes.draw do
  root 'site#home'
  get '/product/new', to: 'product#new'
  get '/product/create', to: 'product#create'
  get '/products', to: 'product#index'
  get '/product/:id', to: 'product#show'
  get '/product/:id/destroy', to: 'product#destroy'

end