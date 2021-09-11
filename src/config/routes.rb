Rails.application.routes.draw do
  get 'posts/index'
  get 'users/index'
  get 'heart/home'
  get 'heart/call'

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
