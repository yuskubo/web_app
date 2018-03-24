Rails.application.routes.draw do

  get 'users/sign_in'
  post 'users/sign_in'
  get 'users/sign_out'

  get 'posts/index'
  get 'home/index'
  get '/', to: 'home#index'
  resources :posts

end
