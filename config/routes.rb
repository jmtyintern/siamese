Rails.application.routes.draw do
  resources :articles
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
  post   '/favorite/:article_id'   => 'favorites#create',   as: 'favorite'
  delete '/unfavorite/:article_id' => 'favorites#destroy',  as: 'unfavorite'
  root 'articles#index'
  get 'show' => 'top#show'

  #get 'users/seccitons/show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
