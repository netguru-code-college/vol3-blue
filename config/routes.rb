Rails.application.routes.draw do
  resources :activities
  resources :locations, only: [:index, :show, :edit, :update, :destroy, :new, :create]
  root 'welcome#index'
  devise_for :users
end
