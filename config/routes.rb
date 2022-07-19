Rails.application.routes.draw do
  resources :housekeepers
  resources :bookings
  get 'home/index'
  get 'home/about'
  devise_for :users

  root to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
