Rails.application.routes.draw do
  resources :activities, except: [:show] do
    resources :requirements
    resources :locations, except: [:index]
  end
  resources :locations, only: [:index]

  
  root 'activities#index'
  get 'set_location', to: 'users#set_location'
  devise_for :users
  resources :users, only: [:show]
end
