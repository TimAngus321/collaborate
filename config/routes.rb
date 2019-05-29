Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :requests, only: [:index]
  resources :tracks, only: [:new, :create]

end
