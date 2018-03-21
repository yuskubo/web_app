Rails.application.routes.draw do

  get 'sessions/index'
  post 'sessions/index'

  get 'posts/index'
  get '/', to: 'home#index'
  resources :posts

end
