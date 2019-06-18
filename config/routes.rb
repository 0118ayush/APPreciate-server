Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :apps, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :reviews, only: [:index, :destroy, :create]

end
