Rails.application.routes.draw do

  root to: 'ingredients#index'

  get '/signup' => 'users#new'
  post '/user' => 'users#create'

  resources :users
  resources :ingredients
  resources :employees

end