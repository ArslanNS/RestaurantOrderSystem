Rails.application.routes.draw do
  get 'orders/index'

  devise_for :users

  root 'welcome#index'

  resources :menu, only: [:index, :create, :update]
  resources :orders, only: [:index, :create, :destroy]

  resources :dashboard, only: [:index]


  namespace :dashboard do
    resources :foods, controller: '/foods'

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
