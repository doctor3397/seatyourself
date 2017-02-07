Rails.application.routes.draw do

  resources :users do
    resources :reservations
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :restaurants



end
