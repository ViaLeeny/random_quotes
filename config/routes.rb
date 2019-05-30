Rails.application.routes.draw do

  resources :sources
  resources :users
  resources :authors
  resources :topics
  resources :quotes
  resources :contributions

  get '/random_quote', to: 'quotes#random_quote', as: 'random_quote'
  get '/', to: 'quotes#home', as: 'home'
  get "login", to: "sessions#new", as: "login"
  post "sessions", to: "sessions#create", as: "sessions"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
