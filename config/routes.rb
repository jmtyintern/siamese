Rails.application.routes.draw do
  resources :articles
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
  root 'articles#index'
  get 'show' => 'top#show'
  get 'smart'=> 'top#index'
  #get 'users/seccitons/show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
