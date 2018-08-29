Rails.application.routes.draw do
  root 'activities#index'

  resources :cities, only: [:index]
  resources :activities, except: [:show]
  resources :locations
  get 'set_location', to: 'users#set_location'
  devise_for :users
  resources :users, only: [:show]
end
