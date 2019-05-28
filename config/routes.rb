Rails.application.routes.draw do

  resources :users
  resources :books
  resources :authors
  resources :topics
  resources :quotes
  resources :contributions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
