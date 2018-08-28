Rails.application.routes.draw do
  resources :activities
  resources :locations
  root 'activities#index'
  devise_for :users
end
