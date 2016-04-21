Rails.application.routes.draw do
  root 'products#index'
  # get '/product/new', to: 'product#new'
  # get '/product/create', to: 'product#create'
  # get '/products', to: 'product#index'
  # get '/product/:id', to: 'product#show'
  # get '/product/:id/destroy', to: 'product#destroy'

  resources :user do
    resources :products
  end

  resources :products, only: [:index, :show, :create, :destroy] do
    resources :bids
  end

end