Rails.application.routes.draw do
  get 'orders/index'
  devise_for :users

  root 'welcome#index'

  resources :menu, only: [:index, :create, :update]
  resources :orders, only: [:index, :create, :destroy]

  resources :dashboard, only: [:index, :update]
  namespace :dashboard do
    resources :foods, controller: '/foods'
    resources :kitchen, controller: '/kitchen'
    resources :employee, controller: '/employee'
  end

  get '/card/new' => 'billing#new_card', as: :add_payment_method, xhr:true
  post "/card" => "billing#create_card", as: :create_payment_method
  get '/success' => 'billing#success', as: :success
  post '/subscription' => 'billing#subscribe', as: :subscribe

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
