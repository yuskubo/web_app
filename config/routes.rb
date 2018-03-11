Rails.application.routes.draw do

  get 'posts/index'
  get '/', to: 'home#index'
  resources :posts
  # get '/test', to: 'home#test'

end
