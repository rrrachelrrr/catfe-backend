Rails.application.routes.draw do
  # post '/login'
  resources :cats
  resources :users
  resources :cat_dates
end
