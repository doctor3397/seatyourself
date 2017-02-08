Rails.application.routes.draw do

  resource :users, only: [:new, :create]

  resource :sessions, only: [:new, :create, :destroy]

  resources :users do
    resources :reservations
  end

  resources :reservations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :restaurants



end
