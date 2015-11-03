Rails.application.routes.draw do

  root 'static_pages#index'

  resources :users,    only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :tours,    only: [:index, :show]

  get "signup",    to: "users#new"
  get "login",     to: "sessions#new"
  delete "logout", to: "sessions#destroy"

end
