Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items, only: [ :new, :create, :destroy]do 
  end
  resources :users, only: [:edit, :update]
end
