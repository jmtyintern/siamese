Rails.application.routes.draw do
  resources :articles
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
  get 'users/seccitons/show'
  get 'top/index'

  get 'top/show'
  get 'article/index'
  get 'article/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
end
