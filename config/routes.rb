Rails.application.routes.draw do
  resources :articles
  resources :locations do
    post :near_by, on: :collection
  end
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
  root 'top#index'
  get 'show' => 'top#show'

  #get 'users/seccitons/show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
