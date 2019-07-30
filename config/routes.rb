Rails.application.routes.draw do
  post '/login', to: 'auth#create'
  get '/current_user', to: 'auth#show'

  resources :cats
  resources :users
  resources :cat_dates

  # resources
end
