Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "app#home"

  resources :users
  resources :categories
  resources :events
  resources :roles
  resources :bookings
  resources :cities
  resources :locations
  resources :notifications
  
end
