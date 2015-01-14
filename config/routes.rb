Rails.application.routes.draw do

  root to: 'ingredients#index'

  resources :ingredients
  resources :employees

end