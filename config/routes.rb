Rails.application.routes.draw do
  resources :activities, except: [:show]
  resources :locations
  root 'activities#index'
  devise_for :users
end
