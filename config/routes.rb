Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:edit, :update ]
  resources :tracks, only: [:new, :create]
  resources :requests, only: [:index, :show]
end
