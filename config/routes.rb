Rails.application.routes.draw do

  resources :sources, only: [:index, :show, :edit, :update, :new, :create]
  resources :users
  resources :authors
  resources :topics
  resources :quotes
  resources :contributions

  get '/random_quote', to: 'quotes#random_quote', as: 'random_quote'
  get '/', to: 'quotes#home', as: 'home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
