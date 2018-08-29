Rails.application.routes.draw do
  root 'activities#index'

  resources :cities, only: [:index]
  resources :activities, except: [:show] do
    resources :requirements
    resources :locations, except: [:index]
  end
  resources :locations, only: [:index]

  get 'set_location', to: 'users#set_location'
  devise_for :users
  resources :users, only: [:show]
end
