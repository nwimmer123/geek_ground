Rails.application.routes.draw do

  root to: "users#index"

  resources :users, :sessions, :books, :shows, :movies, :book_searches, :movie_searches, :tv_searches, :subscriptions
  get 'logout', to: "sessions#destroy"
  
end
