Rails.application.routes.draw do

  root to: "users#index"

  resources :users, :sessions, :book, :shows, :movies, :book_searches, :movie_searches, :tv_searches
  get 'logout', to: "sessions#destroy"
  
end
