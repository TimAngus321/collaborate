Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :users, only: [:edit, :update]
  resources :tracks, only: [:new, :create, :edit, :update] do
    resources :requests, only: [:new, :create]
  end
  resources :requests, only: [:show, :index, :edit, :update] do
    resources :submissions, only: [:create]
  end
  resources :submissions, only: [:show, :index, :edit, :update]
end
