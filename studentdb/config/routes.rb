Rails.application.routes.draw do

  resource :students do
    member do
      post 'update' => 'students#update', as: :update
      post 'new'
      get 'new'
      get 'edit'

    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
