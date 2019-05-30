Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :users, only: [:edit, :update]
  resources :tracks, only: [:new, :create]
    resources :requests, only: [:show, :index, :new, :create]
end

