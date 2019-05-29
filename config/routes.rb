Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :tracks, only: [:new, :create] do
    resources :requests, only: [:index, :new, :create]
  end
  resources :requests, only: [:show]
