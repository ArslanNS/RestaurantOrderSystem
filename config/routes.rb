Rails.application.routes.draw do
  get 'dashboard/index'

  resources :foods
  #post and get request for controller method not needed
  root 'dashboard#index'
end