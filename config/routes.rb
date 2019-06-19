Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :apps, only: [:index]
  resources :users, only: [:index]
  resources :reviews, only: [:index, :destroy, :create]
  resources :user_apps, only: [:index, :create, :destroy]

end
