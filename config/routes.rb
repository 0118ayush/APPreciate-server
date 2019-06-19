Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :apps, only: [:index]
  resources :reviews, only: [:index, :destroy, :create]
  resources :user_apps, only: [:index, :create, :destroy]
  resources :users, only: [:index, :show]

  post "/signin", to: "users#signin"

end
