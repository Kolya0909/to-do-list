Rails.application.routes.draw do
  resources :tasks do
    put :complete, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resource :session, only: [:new,:create, :destroy]
  root 'tasks#index'
  
end
