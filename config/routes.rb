Rails.application.routes.draw do
  post '/login', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  post '/feed', to: 'cat_dates#feed'
  get '/feed', to: 'cat_dates#found'
  # get '/feed', to: 'cat_dates#feed'


  resources :cats
  resources :users
  resources :cat_dates

  # resources
end
