Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'articles/new'
  resources :articles
  root 'articles#new'
end
