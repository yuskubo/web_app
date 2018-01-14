Rails.application.routes.draw do

  get 'posts/index'
  get '/', to: 'home#index'

end
