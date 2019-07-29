Rails.application.routes.draw do
  post '/login', to: 'auth#create'
  resources :cats
  resources :users
  resources :cat_dates

  # resources
end
