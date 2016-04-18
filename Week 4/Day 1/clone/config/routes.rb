Rails.application.routes.draw do
  get '/' => 'visitors#home', as: :home
  get '/company/about' => 'visitors#about', as: :about
  get 'company//blog' => 'visitors#blog', as: :blog
  get 'company/contact' => 'visitors#contact', as: :contact
end
