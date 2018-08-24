Rails.application.routes.draw do
  get 'activities/index'
  get 'activities/new'
  get 'activities/create'
  get 'activities/update'
  get 'activities/delete'
  get 'mycontroller/index'
  resources :activities
  root 'welcome#index'
  devise_for :users
end
