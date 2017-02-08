Rails.application.routes.draw do
  resources :articles
  devise_for :users
  get 'top/index'

  get 'top/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
end
