Rails.application.routes.draw do
  #get 'products/index'
  resources :products, only: [:index, :new, :create]
  resources :restaurants
  devise_for :users
  root 'home#index'  
end
