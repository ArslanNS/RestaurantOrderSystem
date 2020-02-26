Rails.application.routes.draw do
  resources :foods
  get 'dashboard/index'


  root 'dashboard#index'
end