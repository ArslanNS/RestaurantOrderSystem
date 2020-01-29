Rails.application.routes.draw do
  root 'welcome#index'
  get 'menu', to: 'menu#items'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
