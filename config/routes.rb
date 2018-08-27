Rails.application.routes.draw do
  resources :activities
  root 'welcome#index'
  devise_for :users
end
