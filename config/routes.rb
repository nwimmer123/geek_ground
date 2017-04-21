Rails.application.routes.draw do

  root to: "users#index"

  resources :users
  resources :sessions
  get 'logout', to: "sessions#destroy"
  
end
