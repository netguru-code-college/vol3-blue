Rails.application.routes.draw do
  resources :activities
  resources :locations, only: [:index, :show, :edit, :update, :destroy, :new, :create]
  root 'welcome#index'
  get 'set_location', to: 'users#set_location'
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
