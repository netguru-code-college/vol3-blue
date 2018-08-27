Rails.application.routes.draw do
  resources :locations, only: [:index, :show, :edit, :update, :destroy, :new, :create]
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
