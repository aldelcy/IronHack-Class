Rails.application.routes.draw do
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'
  get '/say_name/:name', to: 'site#say_name'
  get '/calculator' => 'site#calculator'
  post '/calculate' => 'site#calculate'

end
