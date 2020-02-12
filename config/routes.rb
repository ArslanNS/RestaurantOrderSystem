Rails.application.routes.draw do
  get 'dashboard/index'

  resources :foods

  root 'dashboard#index'
end