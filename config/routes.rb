Rails.application.routes.draw do
  resources :activities, except: [:show]
  resources :locations
  root 'activities#index'
  get 'set_location', to: 'users#set_location'
  devise_for :users
  resources :users, only: [:show]
end
