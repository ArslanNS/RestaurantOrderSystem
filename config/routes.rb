Rails.application.routes.draw do
  get 'orders/index'
  devise_for :users

  root 'welcome#index'

  resources :menu, only: [:index, :create, :update]
  resources :orders, only: [:index, :create, :destroy]

  resources :dashboard, only: [:index, :update]
  namespace :dashboard do
    resources :foods, controller: '/foods'
  end

  resources :billing, only: [:index]
  get '/card/new' => 'billing#new_card', as: :add_payment_method

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
